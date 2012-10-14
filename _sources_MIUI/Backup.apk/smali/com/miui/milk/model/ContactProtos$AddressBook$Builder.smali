.class public final Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$AddressBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$AddressBook;",
        "Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private group_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10847
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10973
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->group_:Ljava/util/List;

    .line 11062
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->contact_:Ljava/util/List;

    .line 10848
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->maybeForceBuilderInitialization()V

    .line 10849
    return-void
.end method

.method static synthetic access$13000(Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;)Lcom/miui/milk/model/ContactProtos$AddressBook;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10842
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->buildParsed()Lcom/miui/milk/model/ContactProtos$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13100()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;
    .locals 1

    .prologue
    .line 10842
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->create()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/miui/milk/model/ContactProtos$AddressBook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10884
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$AddressBook;

    move-result-object v0

    .line 10885
    .local v0, result:Lcom/miui/milk/model/ContactProtos$AddressBook;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$AddressBook;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10886
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 10889
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;
    .locals 1

    .prologue
    .line 10854
    new-instance v0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContactIsMutable()V
    .locals 2

    .prologue
    .line 11065
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 11066
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->contact_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->contact_:Ljava/util/List;

    .line 11067
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    .line 11069
    :cond_0
    return-void
.end method

.method private ensureGroupIsMutable()V
    .locals 2

    .prologue
    .line 10976
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 10977
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->group_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->group_:Ljava/util/List;

    .line 10978
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    .line 10980
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10852
    return-void
.end method


# virtual methods
.method public addContact(Lcom/miui/milk/model/ContactProtos$Contact;)Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11098
    if-nez p1, :cond_0

    .line 11099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11101
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->ensureContactIsMutable()V

    .line 11102
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11104
    return-object p0
.end method

.method public addGroup(Lcom/miui/milk/model/ContactProtos$Group;)Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 11009
    if-nez p1, :cond_0

    .line 11010
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11012
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->ensureGroupIsMutable()V

    .line 11013
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->group_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11015
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10842
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$AddressBook;
    .locals 4

    .prologue
    .line 10893
    new-instance v1, Lcom/miui/milk/model/ContactProtos$AddressBook;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/milk/model/ContactProtos$AddressBook;-><init>(Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 10894
    .local v1, result:Lcom/miui/milk/model/ContactProtos$AddressBook;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    .line 10895
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 10896
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->group_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->group_:Ljava/util/List;

    .line 10897
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    .line 10899
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->group_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$AddressBook;->access$13302(Lcom/miui/milk/model/ContactProtos$AddressBook;Ljava/util/List;)Ljava/util/List;

    .line 10900
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 10901
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->contact_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->contact_:Ljava/util/List;

    .line 10902
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    .line 10904
    :cond_1
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->contact_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$AddressBook;->access$13402(Lcom/miui/milk/model/ContactProtos$AddressBook;Ljava/util/List;)Ljava/util/List;

    .line 10905
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10842
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->clone()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10842
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->clone()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;
    .locals 2

    .prologue
    .line 10867
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->create()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$AddressBook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$AddressBook;)Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

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
    .line 10842
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->clone()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

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
    .line 10842
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

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
    .line 10842
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10942
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10943
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 10948
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10950
    :sswitch_0
    return-object p0

    .line 10955
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Group;->newBuilder()Lcom/miui/milk/model/ContactProtos$Group$Builder;

    move-result-object v0

    .line 10956
    .local v0, subBuilder:Lcom/miui/milk/model/ContactProtos$Group$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10957
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Group;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->addGroup(Lcom/miui/milk/model/ContactProtos$Group;)Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

    goto :goto_0

    .line 10961
    .end local v0           #subBuilder:Lcom/miui/milk/model/ContactProtos$Group$Builder;
    :sswitch_2
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Contact;->newBuilder()Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    move-result-object v0

    .line 10962
    .local v0, subBuilder:Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10963
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Contact;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->addContact(Lcom/miui/milk/model/ContactProtos$Contact;)Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

    goto :goto_0

    .line 10943
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$AddressBook;)Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 10909
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$AddressBook;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$AddressBook;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 10930
    :cond_0
    :goto_0
    return-object p0

    .line 10910
    :cond_1
    #getter for: Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$AddressBook;->access$13300(Lcom/miui/milk/model/ContactProtos$AddressBook;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10911
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->group_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10912
    #getter for: Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$AddressBook;->access$13300(Lcom/miui/milk/model/ContactProtos$AddressBook;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->group_:Ljava/util/List;

    .line 10913
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    .line 10920
    :cond_2
    :goto_1
    #getter for: Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$AddressBook;->access$13400(Lcom/miui/milk/model/ContactProtos$AddressBook;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10921
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10922
    #getter for: Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$AddressBook;->access$13400(Lcom/miui/milk/model/ContactProtos$AddressBook;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->contact_:Ljava/util/List;

    .line 10923
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->bitField0_:I

    goto :goto_0

    .line 10915
    :cond_3
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->ensureGroupIsMutable()V

    .line 10916
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->group_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$AddressBook;->access$13300(Lcom/miui/milk/model/ContactProtos$AddressBook;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 10925
    :cond_4
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->ensureContactIsMutable()V

    .line 10926
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->contact_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$AddressBook;->access$13400(Lcom/miui/milk/model/ContactProtos$AddressBook;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
