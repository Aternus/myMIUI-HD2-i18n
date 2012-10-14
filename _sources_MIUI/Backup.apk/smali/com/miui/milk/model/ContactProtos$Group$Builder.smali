.class public final Lcom/miui/milk/model/ContactProtos$Group$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Group;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Group;",
        "Lcom/miui/milk/model/ContactProtos$Group$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

.field private bitField0_:I

.field private deleted_:I

.field private groupOrder_:I

.field private groupVisible_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private notes_:Ljava/lang/Object;

.field private systemId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 10122
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10348
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->guid_:Ljava/lang/Object;

    .line 10384
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->luid_:Ljava/lang/Object;

    .line 10462
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->title_:Ljava/lang/Object;

    .line 10498
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->notes_:Ljava/lang/Object;

    .line 10534
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->systemId_:Ljava/lang/Object;

    .line 10612
    sget-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/ContactProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 10123
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->maybeForceBuilderInitialization()V

    .line 10124
    return-void
.end method

.method static synthetic access$11700()Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1

    .prologue
    .line 10117
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->create()Lcom/miui/milk/model/ContactProtos$Group$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1

    .prologue
    .line 10129
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Group$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10127
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10117
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Group;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Group;
    .locals 5

    .prologue
    .line 10184
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Group;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Group;-><init>(Lcom/miui/milk/model/ContactProtos$Group$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 10185
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Group;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10186
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10187
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10188
    or-int/lit8 v2, v2, 0x1

    .line 10190
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Group;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Group;->access$11902(Lcom/miui/milk/model/ContactProtos$Group;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10191
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 10192
    or-int/lit8 v2, v2, 0x2

    .line 10194
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Group;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Group;->access$12002(Lcom/miui/milk/model/ContactProtos$Group;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10195
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 10196
    or-int/lit8 v2, v2, 0x4

    .line 10198
    :cond_2
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->version_:I

    #setter for: Lcom/miui/milk/model/ContactProtos$Group;->version_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Group;->access$12102(Lcom/miui/milk/model/ContactProtos$Group;I)I

    .line 10199
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 10200
    or-int/lit8 v2, v2, 0x8

    .line 10202
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->deleted_:I

    #setter for: Lcom/miui/milk/model/ContactProtos$Group;->deleted_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Group;->access$12202(Lcom/miui/milk/model/ContactProtos$Group;I)I

    .line 10203
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 10204
    or-int/lit8 v2, v2, 0x10

    .line 10206
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Group;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Group;->access$12302(Lcom/miui/milk/model/ContactProtos$Group;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10207
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 10208
    or-int/lit8 v2, v2, 0x20

    .line 10210
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->notes_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Group;->notes_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Group;->access$12402(Lcom/miui/milk/model/ContactProtos$Group;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10211
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 10212
    or-int/lit8 v2, v2, 0x40

    .line 10214
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->systemId_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Group;->systemId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Group;->access$12502(Lcom/miui/milk/model/ContactProtos$Group;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10215
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 10216
    or-int/lit16 v2, v2, 0x80

    .line 10218
    :cond_7
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->groupVisible_:I

    #setter for: Lcom/miui/milk/model/ContactProtos$Group;->groupVisible_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Group;->access$12602(Lcom/miui/milk/model/ContactProtos$Group;I)I

    .line 10219
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 10220
    or-int/lit16 v2, v2, 0x100

    .line 10222
    :cond_8
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->groupOrder_:I

    #setter for: Lcom/miui/milk/model/ContactProtos$Group;->groupOrder_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Group;->access$12702(Lcom/miui/milk/model/ContactProtos$Group;I)I

    .line 10223
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 10224
    or-int/lit16 v2, v2, 0x200

    .line 10226
    :cond_9
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    #setter for: Lcom/miui/milk/model/ContactProtos$Group;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Group;->access$12802(Lcom/miui/milk/model/ContactProtos$Group;Lcom/miui/milk/model/ContactProtos$ActionType;)Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 10227
    #setter for: Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Group;->access$12902(Lcom/miui/milk/model/ContactProtos$Group;I)I

    .line 10228
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10117
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Group$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10117
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Group$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 2

    .prologue
    .line 10158
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->create()Lcom/miui/milk/model/ContactProtos$Group$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Group;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Group;)Lcom/miui/milk/model/ContactProtos$Group$Builder;

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
    .line 10117
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Group$Builder;

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
    .line 10117
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Group$Builder;

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
    .line 10117
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Group$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10275
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10276
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 10281
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10283
    :sswitch_0
    return-object p0

    .line 10288
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10289
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 10293
    :sswitch_2
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10294
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 10298
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10299
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->version_:I

    goto :goto_0

    .line 10303
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10304
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->deleted_:I

    goto :goto_0

    .line 10308
    :sswitch_5
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10309
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 10313
    :sswitch_6
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10314
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->notes_:Ljava/lang/Object;

    goto :goto_0

    .line 10318
    :sswitch_7
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10319
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->systemId_:Ljava/lang/Object;

    goto :goto_0

    .line 10323
    :sswitch_8
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10324
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->groupVisible_:I

    goto :goto_0

    .line 10328
    :sswitch_9
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10329
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->groupOrder_:I

    goto/16 :goto_0

    .line 10333
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 10334
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/ContactProtos$ActionType;

    move-result-object v2

    .line 10335
    .local v2, value:Lcom/miui/milk/model/ContactProtos$ActionType;
    if-eqz v2, :cond_0

    .line 10336
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10337
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    goto/16 :goto_0

    .line 10276
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0xa0 -> :sswitch_a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Group;)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 10232
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Group;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Group;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 10263
    :cond_0
    :goto_0
    return-object p0

    .line 10233
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10234
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Group$Builder;

    .line 10236
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10237
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Group$Builder;

    .line 10239
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10240
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->setVersion(I)Lcom/miui/milk/model/ContactProtos$Group$Builder;

    .line 10242
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->hasDeleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10243
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->getDeleted()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->setDeleted(I)Lcom/miui/milk/model/ContactProtos$Group$Builder;

    .line 10245
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10246
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Group$Builder;

    .line 10248
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->hasNotes()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10249
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->setNotes(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Group$Builder;

    .line 10251
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->hasSystemId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10252
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->setSystemId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Group$Builder;

    .line 10254
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->hasGroupVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10255
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->getGroupVisible()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->setGroupVisible(I)Lcom/miui/milk/model/ContactProtos$Group$Builder;

    .line 10257
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->hasGroupOrder()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10258
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->getGroupOrder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->setGroupOrder(I)Lcom/miui/milk/model/ContactProtos$Group$Builder;

    .line 10260
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10261
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Group;->getActionType()Lcom/miui/milk/model/ContactProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->setActionType(Lcom/miui/milk/model/ContactProtos$ActionType;)Lcom/miui/milk/model/ContactProtos$Group$Builder;

    goto/16 :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/ContactProtos$ActionType;)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10620
    if-nez p1, :cond_0

    .line 10621
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10623
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10624
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 10626
    return-object p0
.end method

.method public setDeleted(I)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10449
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10450
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->deleted_:I

    .line 10452
    return-object p0
.end method

.method public setGroupOrder(I)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10599
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10600
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->groupOrder_:I

    .line 10602
    return-object p0
.end method

.method public setGroupVisible(I)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10578
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10579
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->groupVisible_:I

    .line 10581
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10363
    if-nez p1, :cond_0

    .line 10364
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10366
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10367
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->guid_:Ljava/lang/Object;

    .line 10369
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10399
    if-nez p1, :cond_0

    .line 10400
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10402
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10403
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->luid_:Ljava/lang/Object;

    .line 10405
    return-object p0
.end method

.method public setNotes(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10513
    if-nez p1, :cond_0

    .line 10514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10516
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10517
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->notes_:Ljava/lang/Object;

    .line 10519
    return-object p0
.end method

.method public setSystemId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10549
    if-nez p1, :cond_0

    .line 10550
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10552
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10553
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->systemId_:Ljava/lang/Object;

    .line 10555
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10477
    if-nez p1, :cond_0

    .line 10478
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10480
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10481
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->title_:Ljava/lang/Object;

    .line 10483
    return-object p0
.end method

.method public setVersion(I)Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10428
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->bitField0_:I

    .line 10429
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Group$Builder;->version_:I

    .line 10431
    return-object p0
.end method
