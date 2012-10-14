.class public final Lcom/miui/milk/model/ContactProtos$Name$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Name;",
        "Lcom/miui/milk/model/ContactProtos$Name$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private familyName_:Ljava/lang/Object;

.field private givenName_:Ljava/lang/Object;

.field private middleName_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 366
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 504
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->displayName_:Ljava/lang/Object;

    .line 540
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->givenName_:Ljava/lang/Object;

    .line 576
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->middleName_:Ljava/lang/Object;

    .line 612
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->familyName_:Ljava/lang/Object;

    .line 367
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->maybeForceBuilderInitialization()V

    .line 368
    return-void
.end method

.method static synthetic access$100()Lcom/miui/milk/model/ContactProtos$Name$Builder;
    .locals 1

    .prologue
    .line 361
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->create()Lcom/miui/milk/model/ContactProtos$Name$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Name$Builder;
    .locals 1

    .prologue
    .line 373
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Name$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Name;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Name;
    .locals 5

    .prologue
    .line 416
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Name;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Name;-><init>(Lcom/miui/milk/model/ContactProtos$Name$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 417
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Name;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    .line 418
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 419
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 420
    or-int/lit8 v2, v2, 0x1

    .line 422
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Name;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Name;->access$302(Lcom/miui/milk/model/ContactProtos$Name;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 424
    or-int/lit8 v2, v2, 0x2

    .line 426
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->givenName_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Name;->givenName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Name;->access$402(Lcom/miui/milk/model/ContactProtos$Name;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 428
    or-int/lit8 v2, v2, 0x4

    .line 430
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->middleName_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Name;->middleName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Name;->access$502(Lcom/miui/milk/model/ContactProtos$Name;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 432
    or-int/lit8 v2, v2, 0x8

    .line 434
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->familyName_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Name;->familyName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Name;->access$602(Lcom/miui/milk/model/ContactProtos$Name;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    #setter for: Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Name;->access$702(Lcom/miui/milk/model/ContactProtos$Name;I)I

    .line 436
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Name$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Name$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Name$Builder;
    .locals 2

    .prologue
    .line 390
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->create()Lcom/miui/milk/model/ContactProtos$Name$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Name$Builder;

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
    .line 361
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Name$Builder;

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
    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Name$Builder;

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
    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Name$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Name$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 466
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 471
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    :sswitch_0
    return-object p0

    .line 478
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    .line 479
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 483
    :sswitch_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    .line 484
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->givenName_:Ljava/lang/Object;

    goto :goto_0

    .line 488
    :sswitch_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    .line 489
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->middleName_:Ljava/lang/Object;

    goto :goto_0

    .line 493
    :sswitch_4
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    .line 494
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->familyName_:Ljava/lang/Object;

    goto :goto_0

    .line 466
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Name$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 440
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Name;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Name;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-object p0

    .line 441
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Name;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Name;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->setDisplayName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Name$Builder;

    .line 444
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Name;->hasGivenName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Name;->getGivenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->setGivenName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Name$Builder;

    .line 447
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Name;->hasMiddleName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 448
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->setMiddleName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Name$Builder;

    .line 450
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Name;->hasFamilyName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->setFamilyName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Name$Builder;

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Name$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 519
    if-nez p1, :cond_0

    .line 520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 522
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    .line 523
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->displayName_:Ljava/lang/Object;

    .line 525
    return-object p0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Name$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 627
    if-nez p1, :cond_0

    .line 628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 630
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    .line 631
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->familyName_:Ljava/lang/Object;

    .line 633
    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Name$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 558
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    .line 559
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->givenName_:Ljava/lang/Object;

    .line 561
    return-object p0
.end method

.method public setMiddleName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Name$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 591
    if-nez p1, :cond_0

    .line 592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 594
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->bitField0_:I

    .line 595
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Name$Builder;->middleName_:Ljava/lang/Object;

    .line 597
    return-object p0
.end method
