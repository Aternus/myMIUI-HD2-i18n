.class public final Lcom/miui/milk/model/ContactProtos$Note$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Note;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Note;",
        "Lcom/miui/milk/model/ContactProtos$Note$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3732
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3828
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Note$Builder;->value_:Ljava/lang/Object;

    .line 3733
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->maybeForceBuilderInitialization()V

    .line 3734
    return-void
.end method

.method static synthetic access$4600()Lcom/miui/milk/model/ContactProtos$Note$Builder;
    .locals 1

    .prologue
    .line 3727
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->create()Lcom/miui/milk/model/ContactProtos$Note$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Note$Builder;
    .locals 1

    .prologue
    .line 3739
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Note$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Note$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3737
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3727
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Note;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Note;
    .locals 5

    .prologue
    .line 3776
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Note;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Note;-><init>(Lcom/miui/milk/model/ContactProtos$Note$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 3777
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Note;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Note$Builder;->bitField0_:I

    .line 3778
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3779
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3780
    or-int/lit8 v2, v2, 0x1

    .line 3782
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Note$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Note;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Note;->access$4802(Lcom/miui/milk/model/ContactProtos$Note;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3783
    #setter for: Lcom/miui/milk/model/ContactProtos$Note;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Note;->access$4902(Lcom/miui/milk/model/ContactProtos$Note;I)I

    .line 3784
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3727
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Note$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3727
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Note$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Note$Builder;
    .locals 2

    .prologue
    .line 3750
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->create()Lcom/miui/milk/model/ContactProtos$Note$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Note;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Note;)Lcom/miui/milk/model/ContactProtos$Note$Builder;

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
    .line 3727
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Note$Builder;

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
    .line 3727
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Note$Builder;

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
    .line 3727
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Note$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Note$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3804
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3805
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3810
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3812
    :sswitch_0
    return-object p0

    .line 3817
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Note$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos$Note$Builder;->bitField0_:I

    .line 3818
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Note$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 3805
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Note;)Lcom/miui/milk/model/ContactProtos$Note$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3788
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Note;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Note;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3792
    :cond_0
    :goto_0
    return-object p0

    .line 3789
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Note;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3790
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Note;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Note$Builder;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Note$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3843
    if-nez p1, :cond_0

    .line 3844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3846
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Note$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Note$Builder;->bitField0_:I

    .line 3847
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Note$Builder;->value_:Ljava/lang/Object;

    .line 3849
    return-object p0
.end method