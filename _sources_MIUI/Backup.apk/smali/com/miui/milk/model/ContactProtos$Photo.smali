.class public final Lcom/miui/milk/model/ContactProtos$Photo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Photo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Photo$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Photo;


# instance fields
.field private bitField0_:I

.field private image_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5141
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Photo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Photo;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Photo;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Photo;

    .line 5142
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Photo;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Photo;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Photo;->initFields()V

    .line 5143
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Photo$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4876
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4903
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Photo;->memoizedIsInitialized:B

    .line 4920
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Photo;->memoizedSerializedSize:I

    .line 4877
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Photo$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4871
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Photo;-><init>(Lcom/miui/milk/model/ContactProtos$Photo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4878
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4903
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Photo;->memoizedIsInitialized:B

    .line 4920
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Photo;->memoizedSerializedSize:I

    .line 4878
    return-void
.end method

.method static synthetic access$6502(Lcom/miui/milk/model/ContactProtos$Photo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4871
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Photo;->image_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/miui/milk/model/ContactProtos$Photo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4871
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Photo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Photo;
    .locals 1

    .prologue
    .line 4882
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Photo;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Photo;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4901
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Photo;->image_:Lcom/google/protobuf/ByteString;

    .line 4902
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Photo$Builder;
    .locals 1

    .prologue
    .line 5006
    #calls: Lcom/miui/milk/model/ContactProtos$Photo$Builder;->create()Lcom/miui/milk/model/ContactProtos$Photo$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->access$6300()Lcom/miui/milk/model/ContactProtos$Photo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getImage()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4897
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Photo;->image_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4922
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Photo;->memoizedSerializedSize:I

    .line 4923
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4931
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4925
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4926
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Photo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4927
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Photo;->image_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4930
    :cond_1
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Photo;->memoizedSerializedSize:I

    move v1, v0

    .line 4931
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasImage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4894
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Photo;->bitField0_:I

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
    .line 4936
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

    .line 4914
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Photo;->getSerializedSize()I

    .line 4915
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Photo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4916
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Photo;->image_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4918
    :cond_0
    return-void
.end method
