.class public final Lcom/miui/milk/model/ContactProtos$Event;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Event$Builder;,
        Lcom/miui/milk/model/ContactProtos$Event$EventType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Event;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2274
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Event;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Event;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Event;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Event;

    .line 2275
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Event;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Event;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Event;->initFields()V

    .line 2276
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Event$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1778
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1918
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->memoizedIsInitialized:B

    .line 1941
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->memoizedSerializedSize:I

    .line 1779
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Event$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1773
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Event;-><init>(Lcom/miui/milk/model/ContactProtos$Event$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1780
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1918
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->memoizedIsInitialized:B

    .line 1941
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->memoizedSerializedSize:I

    .line 1780
    return-void
.end method

.method static synthetic access$2502(Lcom/miui/milk/model/ContactProtos$Event;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Event;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/miui/milk/model/ContactProtos$Event;Lcom/miui/milk/model/ContactProtos$Event$EventType;)Lcom/miui/milk/model/ContactProtos$Event$EventType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Event;->type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/miui/milk/model/ContactProtos$Event;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Event;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/miui/milk/model/ContactProtos$Event;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1773
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Event;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Event;
    .locals 1

    .prologue
    .line 1784
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Event;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Event;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1902
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Event;->label_:Ljava/lang/Object;

    .line 1903
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1904
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1906
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->label_:Ljava/lang/Object;

    move-object v2, v0

    .line 1909
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
    .line 1860
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Event;->value_:Ljava/lang/Object;

    .line 1861
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1862
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1864
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->value_:Ljava/lang/Object;

    move-object v2, v0

    .line 1867
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

    .line 1914
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Event;->value_:Ljava/lang/Object;

    .line 1915
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->OTHER:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    .line 1916
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Event;->label_:Ljava/lang/Object;

    .line 1917
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Event$Builder;
    .locals 1

    .prologue
    .line 2035
    #calls: Lcom/miui/milk/model/ContactProtos$Event$Builder;->create()Lcom/miui/milk/model/ContactProtos$Event$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->access$2300()Lcom/miui/milk/model/ContactProtos$Event$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1888
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Event;->label_:Ljava/lang/Object;

    .line 1889
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1890
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 1898
    :goto_0
    return-object v4

    .line 1892
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 1894
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 1895
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1896
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Event;->label_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 1898
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1943
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->memoizedSerializedSize:I

    .line 1944
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1960
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1946
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1947
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1948
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Event;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1951
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1952
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Event;->type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Event$EventType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1955
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1956
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Event;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1959
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->memoizedSerializedSize:I

    move v1, v0

    .line 1960
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/miui/milk/model/ContactProtos$Event$EventType;
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1846
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Event;->value_:Ljava/lang/Object;

    .line 1847
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1848
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 1856
    :goto_0
    return-object v4

    .line 1850
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 1852
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 1853
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1854
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Event;->value_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 1856
    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 1885
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->bitField0_:I

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
    .line 1875
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->bitField0_:I

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

    .line 1843
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->bitField0_:I

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
    .line 1965
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

    .line 1929
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Event;->getSerializedSize()I

    .line 1930
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1931
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Event;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1933
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1934
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Event$EventType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1936
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1937
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Event;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1939
    :cond_2
    return-void
.end method
