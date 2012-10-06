.class public final Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$GroupMembership;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$GroupMembership;",
        "Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private groupGUID_:Ljava/lang/Object;

.field private groupLUID_:Ljava/lang/Object;

.field private groupTitle_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 7128
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7252
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupGUID_:Ljava/lang/Object;

    .line 7288
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupLUID_:Ljava/lang/Object;

    .line 7324
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupTitle_:Ljava/lang/Object;

    .line 7129
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->maybeForceBuilderInitialization()V

    .line 7130
    return-void
.end method

.method static synthetic access$8900()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    .locals 1

    .prologue
    .line 7123
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->create()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    .locals 1

    .prologue
    .line 7135
    new-instance v0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 7133
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7123
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$GroupMembership;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$GroupMembership;
    .locals 5

    .prologue
    .line 7176
    new-instance v1, Lcom/miui/milk/model/ContactProtos$GroupMembership;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$GroupMembership;-><init>(Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 7177
    .local v1, result:Lcom/miui/milk/model/ContactProtos$GroupMembership;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    .line 7178
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 7179
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 7180
    or-int/lit8 v2, v2, 0x1

    .line 7182
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupGUID_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupGUID_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->access$9102(Lcom/miui/milk/model/ContactProtos$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7183
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 7184
    or-int/lit8 v2, v2, 0x2

    .line 7186
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupLUID_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupLUID_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->access$9202(Lcom/miui/milk/model/ContactProtos$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7187
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 7188
    or-int/lit8 v2, v2, 0x4

    .line 7190
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupTitle_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupTitle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->access$9302(Lcom/miui/milk/model/ContactProtos$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7191
    #setter for: Lcom/miui/milk/model/ContactProtos$GroupMembership;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->access$9402(Lcom/miui/milk/model/ContactProtos$GroupMembership;I)I

    .line 7192
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7123
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->clone()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7123
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->clone()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    .locals 2

    .prologue
    .line 7150
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->create()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$GroupMembership;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$GroupMembership;)Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

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
    .line 7123
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->clone()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

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
    .line 7123
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

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
    .line 7123
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7218
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 7219
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7224
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7226
    :sswitch_0
    return-object p0

    .line 7231
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    .line 7232
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupGUID_:Ljava/lang/Object;

    goto :goto_0

    .line 7236
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    .line 7237
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupLUID_:Ljava/lang/Object;

    goto :goto_0

    .line 7241
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    .line 7242
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupTitle_:Ljava/lang/Object;

    goto :goto_0

    .line 7219
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$GroupMembership;)Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 7196
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$GroupMembership;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 7206
    :cond_0
    :goto_0
    return-object p0

    .line 7197
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->hasGroupGUID()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7198
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->setGroupGUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

    .line 7200
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->hasGroupLUID()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7201
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupLUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->setGroupLUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

    .line 7203
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->hasGroupTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7204
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->setGroupTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

    goto :goto_0
.end method

.method public setGroupGUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7267
    if-nez p1, :cond_0

    .line 7268
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7270
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    .line 7271
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupGUID_:Ljava/lang/Object;

    .line 7273
    return-object p0
.end method

.method public setGroupLUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7303
    if-nez p1, :cond_0

    .line 7304
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7306
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    .line 7307
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupLUID_:Ljava/lang/Object;

    .line 7309
    return-object p0
.end method

.method public setGroupTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 7339
    if-nez p1, :cond_0

    .line 7340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7342
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->bitField0_:I

    .line 7343
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->groupTitle_:Ljava/lang/Object;

    .line 7345
    return-object p0
.end method
