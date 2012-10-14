.class public final Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Nickname;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Nickname;",
        "Lcom/miui/milk/model/ContactProtos$Nickname$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 3322
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3450
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->value_:Ljava/lang/Object;

    .line 3486
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->DEFAULT:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    .line 3510
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->label_:Ljava/lang/Object;

    .line 3323
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->maybeForceBuilderInitialization()V

    .line 3324
    return-void
.end method

.method static synthetic access$3900()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    .locals 1

    .prologue
    .line 3317
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->create()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    .locals 1

    .prologue
    .line 3329
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3327
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3317
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Nickname;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Nickname;
    .locals 5

    .prologue
    .line 3370
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Nickname;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Nickname;-><init>(Lcom/miui/milk/model/ContactProtos$Nickname$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 3371
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Nickname;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    .line 3372
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3373
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3374
    or-int/lit8 v2, v2, 0x1

    .line 3376
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Nickname;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Nickname;->access$4102(Lcom/miui/milk/model/ContactProtos$Nickname;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3377
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3378
    or-int/lit8 v2, v2, 0x2

    .line 3380
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    #setter for: Lcom/miui/milk/model/ContactProtos$Nickname;->type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Nickname;->access$4202(Lcom/miui/milk/model/ContactProtos$Nickname;Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;)Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    .line 3381
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3382
    or-int/lit8 v2, v2, 0x4

    .line 3384
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Nickname;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Nickname;->access$4302(Lcom/miui/milk/model/ContactProtos$Nickname;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3385
    #setter for: Lcom/miui/milk/model/ContactProtos$Nickname;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Nickname;->access$4402(Lcom/miui/milk/model/ContactProtos$Nickname;I)I

    .line 3386
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3317
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3317
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    .locals 2

    .prologue
    .line 3344
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->create()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Nickname;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Nickname;)Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

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
    .line 3317
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

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
    .line 3317
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

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
    .line 3317
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3412
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3413
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 3418
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3420
    :sswitch_0
    return-object p0

    .line 3425
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    .line 3426
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 3430
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3431
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->valueOf(I)Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    move-result-object v2

    .line 3432
    .local v2, value:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;
    if-eqz v2, :cond_0

    .line 3433
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    .line 3434
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    goto :goto_0

    .line 3439
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    .line 3440
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 3413
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Nickname;)Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3390
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Nickname;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Nickname;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3400
    :cond_0
    :goto_0
    return-object p0

    .line 3391
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Nickname;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3392
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Nickname;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

    .line 3394
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Nickname;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3395
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Nickname;->getType()Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->setType(Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;)Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

    .line 3397
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Nickname;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3398
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Nickname;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3525
    if-nez p1, :cond_0

    .line 3526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3528
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    .line 3529
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->label_:Ljava/lang/Object;

    .line 3531
    return-object p0
.end method

.method public setType(Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;)Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3494
    if-nez p1, :cond_0

    .line 3495
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3497
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    .line 3498
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    .line 3500
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3465
    if-nez p1, :cond_0

    .line 3466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3468
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->bitField0_:I

    .line 3469
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->value_:Ljava/lang/Object;

    .line 3471
    return-object p0
.end method
