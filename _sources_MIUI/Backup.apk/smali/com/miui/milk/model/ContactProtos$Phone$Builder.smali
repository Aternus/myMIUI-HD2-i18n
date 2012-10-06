.class public final Lcom/miui/milk/model/ContactProtos$Phone$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Phone;",
        "Lcom/miui/milk/model/ContactProtos$Phone$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 998
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1126
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->value_:Ljava/lang/Object;

    .line 1162
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->OTHER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 1186
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->label_:Ljava/lang/Object;

    .line 999
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->maybeForceBuilderInitialization()V

    .line 1000
    return-void
.end method

.method static synthetic access$900()Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    .locals 1

    .prologue
    .line 993
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->create()Lcom/miui/milk/model/ContactProtos$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    .locals 1

    .prologue
    .line 1005
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1003
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Phone;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Phone;
    .locals 5

    .prologue
    .line 1046
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Phone;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Phone;-><init>(Lcom/miui/milk/model/ContactProtos$Phone$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 1047
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Phone;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    .line 1048
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1049
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1050
    or-int/lit8 v2, v2, 0x1

    .line 1052
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Phone;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Phone;->access$1102(Lcom/miui/milk/model/ContactProtos$Phone;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1054
    or-int/lit8 v2, v2, 0x2

    .line 1056
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    #setter for: Lcom/miui/milk/model/ContactProtos$Phone;->type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Phone;->access$1202(Lcom/miui/milk/model/ContactProtos$Phone;Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;)Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 1057
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1058
    or-int/lit8 v2, v2, 0x4

    .line 1060
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Phone;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Phone;->access$1302(Lcom/miui/milk/model/ContactProtos$Phone;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    #setter for: Lcom/miui/milk/model/ContactProtos$Phone;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Phone;->access$1402(Lcom/miui/milk/model/ContactProtos$Phone;I)I

    .line 1062
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    .locals 2

    .prologue
    .line 1020
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->create()Lcom/miui/milk/model/ContactProtos$Phone$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Phone;)Lcom/miui/milk/model/ContactProtos$Phone$Builder;

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
    .line 993
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Phone$Builder;

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
    .line 993
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Phone$Builder;

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
    .line 993
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Phone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1088
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1089
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1094
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1096
    :sswitch_0
    return-object p0

    .line 1101
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    .line 1102
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 1106
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1107
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->valueOf(I)Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    move-result-object v2

    .line 1108
    .local v2, value:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;
    if-eqz v2, :cond_0

    .line 1109
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    .line 1110
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 1115
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    .line 1116
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 1089
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Phone;)Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1066
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Phone;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Phone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return-object p0

    .line 1067
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Phone;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1068
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Phone;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Phone$Builder;

    .line 1070
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Phone;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1071
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Phone;->getType()Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->setType(Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;)Lcom/miui/milk/model/ContactProtos$Phone$Builder;

    .line 1073
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Phone;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Phone;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Phone$Builder;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1201
    if-nez p1, :cond_0

    .line 1202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1204
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    .line 1205
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->label_:Ljava/lang/Object;

    .line 1207
    return-object p0
.end method

.method public setType(Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;)Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1170
    if-nez p1, :cond_0

    .line 1171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1173
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    .line 1174
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 1176
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1141
    if-nez p1, :cond_0

    .line 1142
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1144
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->bitField0_:I

    .line 1145
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->value_:Ljava/lang/Object;

    .line 1147
    return-object p0
.end method
