.class public final Lcom/miui/milk/model/ContactProtos$Phone;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Phone$Builder;,
        Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Phone;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1225
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Phone;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Phone;

    .line 1226
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Phone;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Phone;->initFields()V

    .line 1227
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Phone$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 678
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 869
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->memoizedIsInitialized:B

    .line 892
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->memoizedSerializedSize:I

    .line 679
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Phone$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Phone;-><init>(Lcom/miui/milk/model/ContactProtos$Phone$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 680
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 869
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->memoizedIsInitialized:B

    .line 892
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->memoizedSerializedSize:I

    .line 680
    return-void
.end method

.method static synthetic access$1102(Lcom/miui/milk/model/ContactProtos$Phone;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Phone;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/miui/milk/model/ContactProtos$Phone;Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;)Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Phone;->type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/miui/milk/model/ContactProtos$Phone;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Phone;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/miui/milk/model/ContactProtos$Phone;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Phone;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Phone;
    .locals 1

    .prologue
    .line 684
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Phone;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 853
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Phone;->label_:Ljava/lang/Object;

    .line 854
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 855
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 857
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->label_:Ljava/lang/Object;

    move-object v2, v0

    .line 860
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

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 811
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Phone;->value_:Ljava/lang/Object;

    .line 812
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 813
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 815
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->value_:Ljava/lang/Object;

    move-object v2, v0

    .line 818
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
    .locals 2

    .prologue
    const-string v1, ""

    .line 865
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Phone;->value_:Ljava/lang/Object;

    .line 866
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->OTHER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 867
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Phone;->label_:Ljava/lang/Object;

    .line 868
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    .locals 1

    .prologue
    .line 986
    #calls: Lcom/miui/milk/model/ContactProtos$Phone$Builder;->create()Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->access$900()Lcom/miui/milk/model/ContactProtos$Phone$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 839
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Phone;->label_:Ljava/lang/Object;

    .line 840
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 841
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 849
    :goto_0
    return-object v4

    .line 843
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 845
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 846
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 847
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Phone;->label_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 849
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 894
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->memoizedSerializedSize:I

    .line 895
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 911
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 897
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 898
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Phone;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 899
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Phone;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 902
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Phone;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 903
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Phone;->type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 906
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Phone;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 907
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Phone;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 910
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->memoizedSerializedSize:I

    move v1, v0

    .line 911
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 797
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Phone;->value_:Ljava/lang/Object;

    .line 798
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 799
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 807
    :goto_0
    return-object v4

    .line 801
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 803
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 804
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 805
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Phone;->value_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 807
    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 836
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 826
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 794
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->bitField0_:I

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
    .line 916
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 880
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Phone;->getSerializedSize()I

    .line 881
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 882
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Phone;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 884
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 885
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->type_:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 887
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 888
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Phone;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 890
    :cond_2
    return-void
.end method
