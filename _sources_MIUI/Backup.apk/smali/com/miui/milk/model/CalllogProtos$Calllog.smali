.class public final Lcom/miui/milk/model/CalllogProtos$Calllog;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CalllogProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/CalllogProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Calllog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/CalllogProtos$Calllog;


# instance fields
.field private call_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/CalllogProtos$Call;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1305
    new-instance v0, Lcom/miui/milk/model/CalllogProtos$Calllog;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/CalllogProtos$Calllog;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/CalllogProtos$Calllog;->defaultInstance:Lcom/miui/milk/model/CalllogProtos$Calllog;

    .line 1306
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$Calllog;->defaultInstance:Lcom/miui/milk/model/CalllogProtos$Calllog;

    invoke-direct {v0}, Lcom/miui/milk/model/CalllogProtos$Calllog;->initFields()V

    .line 1307
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 958
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 995
    iput-byte v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->memoizedIsInitialized:B

    .line 1012
    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->memoizedSerializedSize:I

    .line 959
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;Lcom/miui/milk/model/CalllogProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 953
    invoke-direct {p0, p1}, Lcom/miui/milk/model/CalllogProtos$Calllog;-><init>(Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 960
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 995
    iput-byte v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->memoizedIsInitialized:B

    .line 1012
    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->memoizedSerializedSize:I

    .line 960
    return-void
.end method

.method static synthetic access$1500(Lcom/miui/milk/model/CalllogProtos$Calllog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/miui/milk/model/CalllogProtos$Calllog;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 953
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/CalllogProtos$Calllog;
    .locals 1

    .prologue
    .line 964
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$Calllog;->defaultInstance:Lcom/miui/milk/model/CalllogProtos$Calllog;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 993
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;

    .line 994
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;
    .locals 1

    .prologue
    .line 1098
    #calls: Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->create()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->access$1300()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/CalllogProtos$Calllog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1056
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos$Calllog;->newBuilder()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

    #calls: Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->buildParsed()Lcom/miui/milk/model/CalllogProtos$Calllog;
    invoke-static {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->access$1200(Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;)Lcom/miui/milk/model/CalllogProtos$Calllog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCallList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/CalllogProtos$Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 975
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1014
    iget v1, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->memoizedSerializedSize:I

    .line 1015
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1023
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 1017
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 1018
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1019
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1022
    :cond_1
    iput v1, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->memoizedSerializedSize:I

    move v2, v1

    .line 1023
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 997
    iget-byte v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->memoizedIsInitialized:B

    .line 998
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 1001
    :goto_0
    return v1

    .line 998
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1000
    :cond_1
    iput-byte v2, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->memoizedIsInitialized:B

    move v1, v2

    .line 1001
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
    .line 1028
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
    .line 1006
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog;->getSerializedSize()I

    .line 1007
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1008
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    return-void
.end method
