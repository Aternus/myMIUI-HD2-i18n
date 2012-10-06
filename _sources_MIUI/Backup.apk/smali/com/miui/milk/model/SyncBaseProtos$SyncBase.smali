.class public final Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SyncBaseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SyncBaseProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private version_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 322
    new-instance v0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->defaultInstance:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    .line 323
    sget-object v0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->defaultInstance:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    invoke-direct {v0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->initFields()V

    .line 324
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 72
    iput-byte v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->memoizedIsInitialized:B

    .line 89
    iput v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->memoizedSerializedSize:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;Lcom/miui/milk/model/SyncBaseProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;-><init>(Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 72
    iput-byte v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->memoizedIsInitialized:B

    .line 89
    iput v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method static synthetic access$302(Lcom/miui/milk/model/SyncBaseProtos$SyncBase;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->version_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/SyncBaseProtos$SyncBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->defaultInstance:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    return-object v0
.end method

.method private getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->version_:Ljava/lang/Object;

    .line 59
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 60
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 62
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->version_:Ljava/lang/Object;

    move-object v2, v0

    .line 65
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
    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->version_:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;
    .locals 1

    .prologue
    .line 175
    #calls: Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->create()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;
    invoke-static {}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->access$100()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->newBuilder()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

    #calls: Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->buildParsed()Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    invoke-static {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->access$000(Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 91
    iget v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->memoizedSerializedSize:I

    .line 92
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 100
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 94
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 95
    iget v2, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 96
    const/16 v2, 0xf

    invoke-direct {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 99
    :cond_1
    iput v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->memoizedSerializedSize:I

    move v1, v0

    .line 100
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 44
    iget-object v2, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->version_:Ljava/lang/Object;

    .line 45
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 46
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 54
    :goto_0
    return-object v4

    .line 48
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 50
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    iput-object v3, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->version_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 54
    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    iget v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-byte v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->memoizedIsInitialized:B

    .line 75
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 78
    :goto_0
    return v1

    .line 75
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :cond_1
    iput-byte v2, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->memoizedIsInitialized:B

    move v1, v2

    .line 78
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
    .line 105
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
    .line 83
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->getSerializedSize()I

    .line 84
    iget v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 87
    :cond_0
    return-void
.end method
