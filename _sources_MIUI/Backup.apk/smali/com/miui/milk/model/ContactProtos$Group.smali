.class public final Lcom/miui/milk/model/ContactProtos$Group;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Group$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Group;


# instance fields
.field private actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

.field private bitField0_:I

.field private deleted_:I

.field private groupOrder_:I

.field private groupVisible_:I

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private notes_:Ljava/lang/Object;

.field private systemId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10639
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Group;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Group;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Group;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Group;

    .line 10640
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Group;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Group;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Group;->initFields()V

    .line 10641
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Group$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9708
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9944
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->memoizedIsInitialized:B

    .line 9988
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->memoizedSerializedSize:I

    .line 9709
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Group$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Group;-><init>(Lcom/miui/milk/model/ContactProtos$Group$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9710
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9944
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->memoizedIsInitialized:B

    .line 9988
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->memoizedSerializedSize:I

    .line 9710
    return-void
.end method

.method static synthetic access$11902(Lcom/miui/milk/model/ContactProtos$Group;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/miui/milk/model/ContactProtos$Group;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12102(Lcom/miui/milk/model/ContactProtos$Group;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Group;->version_:I

    return p1
.end method

.method static synthetic access$12202(Lcom/miui/milk/model/ContactProtos$Group;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Group;->deleted_:I

    return p1
.end method

.method static synthetic access$12302(Lcom/miui/milk/model/ContactProtos$Group;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12402(Lcom/miui/milk/model/ContactProtos$Group;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group;->notes_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12502(Lcom/miui/milk/model/ContactProtos$Group;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group;->systemId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12602(Lcom/miui/milk/model/ContactProtos$Group;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Group;->groupVisible_:I

    return p1
.end method

.method static synthetic access$12702(Lcom/miui/milk/model/ContactProtos$Group;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Group;->groupOrder_:I

    return p1
.end method

.method static synthetic access$12802(Lcom/miui/milk/model/ContactProtos$Group;Lcom/miui/milk/model/ContactProtos$ActionType;)Lcom/miui/milk/model/ContactProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Group;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$12902(Lcom/miui/milk/model/ContactProtos$Group;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9703
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Group;
    .locals 1

    .prologue
    .line 9714
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Group;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Group;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 9743
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->guid_:Ljava/lang/Object;

    .line 9744
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9745
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9747
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->guid_:Ljava/lang/Object;

    move-object v2, v0

    .line 9750
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

.method private getLuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 9775
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->luid_:Ljava/lang/Object;

    .line 9776
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9777
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9779
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->luid_:Ljava/lang/Object;

    move-object v2, v0

    .line 9782
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

.method private getNotesBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 9859
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->notes_:Ljava/lang/Object;

    .line 9860
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9861
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9863
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->notes_:Ljava/lang/Object;

    move-object v2, v0

    .line 9866
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

.method private getSystemIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 9891
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->systemId_:Ljava/lang/Object;

    .line 9892
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9893
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9895
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->systemId_:Ljava/lang/Object;

    move-object v2, v0

    .line 9898
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

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 9827
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->title_:Ljava/lang/Object;

    .line 9828
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9829
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9831
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 9834
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
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 9933
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->guid_:Ljava/lang/Object;

    .line 9934
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->luid_:Ljava/lang/Object;

    .line 9935
    iput v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->version_:I

    .line 9936
    iput v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->deleted_:I

    .line 9937
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->title_:Ljava/lang/Object;

    .line 9938
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->notes_:Ljava/lang/Object;

    .line 9939
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->systemId_:Ljava/lang/Object;

    .line 9940
    iput v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->groupVisible_:I

    .line 9941
    iput v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->groupOrder_:I

    .line 9942
    sget-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/ContactProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 9943
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Group$Builder;
    .locals 1

    .prologue
    .line 10110
    #calls: Lcom/miui/milk/model/ContactProtos$Group$Builder;->create()Lcom/miui/milk/model/ContactProtos$Group$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Group$Builder;->access$11700()Lcom/miui/milk/model/ContactProtos$Group$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/ContactProtos$ActionType;
    .locals 1

    .prologue
    .line 9929
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    return-object v0
.end method

.method public getDeleted()I
    .locals 1

    .prologue
    .line 9803
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->deleted_:I

    return v0
.end method

.method public getGroupOrder()I
    .locals 1

    .prologue
    .line 9919
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->groupOrder_:I

    return v0
.end method

.method public getGroupVisible()I
    .locals 1

    .prologue
    .line 9909
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->groupVisible_:I

    return v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 9729
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->guid_:Ljava/lang/Object;

    .line 9730
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 9731
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 9739
    :goto_0
    return-object v4

    .line 9733
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 9735
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 9736
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9737
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 9739
    goto :goto_0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 9761
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->luid_:Ljava/lang/Object;

    .line 9762
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 9763
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 9771
    :goto_0
    return-object v4

    .line 9765
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 9767
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 9768
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9769
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 9771
    goto :goto_0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 5

    .prologue
    .line 9845
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->notes_:Ljava/lang/Object;

    .line 9846
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 9847
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 9855
    :goto_0
    return-object v4

    .line 9849
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 9851
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 9852
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9853
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group;->notes_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 9855
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9990
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->memoizedSerializedSize:I

    .line 9991
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 10035
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 9993
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 9994
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 9995
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Group;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9998
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 9999
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Group;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10002
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 10003
    const/4 v2, 0x3

    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group;->version_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10006
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 10007
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->deleted_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10010
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 10011
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Group;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10014
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 10015
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Group;->getNotesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10018
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 10019
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Group;->getSystemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10022
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 10023
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->groupVisible_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10026
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 10027
    const/16 v2, 0x9

    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Group;->groupOrder_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10030
    :cond_9
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 10031
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos$ActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10034
    :cond_a
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->memoizedSerializedSize:I

    move v1, v0

    .line 10035
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 9877
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->systemId_:Ljava/lang/Object;

    .line 9878
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 9879
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 9887
    :goto_0
    return-object v4

    .line 9881
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 9883
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 9884
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9885
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group;->systemId_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 9887
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 9813
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Group;->title_:Ljava/lang/Object;

    .line 9814
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 9815
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 9823
    :goto_0
    return-object v4

    .line 9817
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 9819
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 9820
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9821
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Group;->title_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 9823
    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 9793
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->version_:I

    return v0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 9926
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeleted()Z
    .locals 2

    .prologue
    .line 9800
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGroupOrder()Z
    .locals 2

    .prologue
    .line 9916
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGroupVisible()Z
    .locals 2

    .prologue
    .line 9906
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9726
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLuid()Z
    .locals 2

    .prologue
    .line 9758
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

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

.method public hasNotes()Z
    .locals 2

    .prologue
    .line 9842
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSystemId()Z
    .locals 2

    .prologue
    .line 9874
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 2

    .prologue
    .line 9810
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 2

    .prologue
    .line 9790
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

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

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 10040
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 9955
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Group;->getSerializedSize()I

    .line 9956
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9957
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Group;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9959
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 9960
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Group;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9962
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 9963
    const/4 v0, 0x3

    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->version_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9965
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 9966
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->deleted_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9968
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 9969
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Group;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9971
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 9972
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Group;->getNotesBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9974
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 9975
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Group;->getSystemIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9977
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 9978
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->groupVisible_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9980
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 9981
    const/16 v0, 0x9

    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->groupOrder_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9983
    :cond_8
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Group;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 9984
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Group;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9986
    :cond_9
    return-void
.end method
