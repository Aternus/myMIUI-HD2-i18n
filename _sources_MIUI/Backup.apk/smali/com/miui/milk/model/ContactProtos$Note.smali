.class public final Lcom/miui/milk/model/ContactProtos$Note;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Note"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Note$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Note;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3867
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Note;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Note;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Note;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Note;

    .line 3868
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Note;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Note;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Note;->initFields()V

    .line 3869
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Note$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3568
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3617
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Note;->memoizedIsInitialized:B

    .line 3634
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Note;->memoizedSerializedSize:I

    .line 3569
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Note$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3563
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Note;-><init>(Lcom/miui/milk/model/ContactProtos$Note$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3570
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3617
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Note;->memoizedIsInitialized:B

    .line 3634
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Note;->memoizedSerializedSize:I

    .line 3570
    return-void
.end method

.method static synthetic access$4802(Lcom/miui/milk/model/ContactProtos$Note;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3563
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Note;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/miui/milk/model/ContactProtos$Note;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3563
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Note;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Note;
    .locals 1

    .prologue
    .line 3574
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Note;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Note;

    return-object v0
.end method

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3603
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Note;->value_:Ljava/lang/Object;

    .line 3604
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3605
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3607
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Note;->value_:Ljava/lang/Object;

    move-object v2, v0

    .line 3610
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3615
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Note;->value_:Ljava/lang/Object;

    .line 3616
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Note$Builder;
    .locals 1

    .prologue
    .line 3720
    #calls: Lcom/miui/milk/model/ContactProtos$Note$Builder;->create()Lcom/miui/milk/model/ContactProtos$Note$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->access$4600()Lcom/miui/milk/model/ContactProtos$Note$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3636
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Note;->memoizedSerializedSize:I

    .line 3637
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3645
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 3639
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 3640
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Note;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3641
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Note;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3644
    :cond_1
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Note;->memoizedSerializedSize:I

    move v1, v0

    .line 3645
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3589
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Note;->value_:Ljava/lang/Object;

    .line 3590
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3591
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 3599
    :goto_0
    return-object v4

    .line 3593
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 3595
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3596
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3597
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Note;->value_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 3599
    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3586
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Note;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3650
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3628
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Note;->getSerializedSize()I

    .line 3629
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Note;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3630
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Note;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3632
    :cond_0
    return-void
.end method
