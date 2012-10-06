.class public final Lcom/miui/milk/model/ContactProtos$GroupMembership;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupMembership"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$GroupMembership;


# instance fields
.field private bitField0_:I

.field private groupGUID_:Ljava/lang/Object;

.field private groupLUID_:Ljava/lang/Object;

.field private groupTitle_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7363
    new-instance v0, Lcom/miui/milk/model/ContactProtos$GroupMembership;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$GroupMembership;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->defaultInstance:Lcom/miui/milk/model/ContactProtos$GroupMembership;

    .line 7364
    sget-object v0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->defaultInstance:Lcom/miui/milk/model/ContactProtos$GroupMembership;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->initFields()V

    .line 7365
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6884
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6999
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->memoizedIsInitialized:B

    .line 7022
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->memoizedSerializedSize:I

    .line 6885
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6879
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$GroupMembership;-><init>(Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6886
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6999
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->memoizedIsInitialized:B

    .line 7022
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->memoizedSerializedSize:I

    .line 6886
    return-void
.end method

.method static synthetic access$9102(Lcom/miui/milk/model/ContactProtos$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6879
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupGUID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9202(Lcom/miui/milk/model/ContactProtos$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6879
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupLUID_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/miui/milk/model/ContactProtos$GroupMembership;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6879
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupTitle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/miui/milk/model/ContactProtos$GroupMembership;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6879
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$GroupMembership;
    .locals 1

    .prologue
    .line 6890
    sget-object v0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->defaultInstance:Lcom/miui/milk/model/ContactProtos$GroupMembership;

    return-object v0
.end method

.method private getGroupGUIDBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6919
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupGUID_:Ljava/lang/Object;

    .line 6920
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6921
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6923
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupGUID_:Ljava/lang/Object;

    move-object v2, v0

    .line 6926
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

.method private getGroupLUIDBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6951
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupLUID_:Ljava/lang/Object;

    .line 6952
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6953
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6955
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupLUID_:Ljava/lang/Object;

    move-object v2, v0

    .line 6958
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

.method private getGroupTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6983
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupTitle_:Ljava/lang/Object;

    .line 6984
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6985
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6987
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupTitle_:Ljava/lang/Object;

    move-object v2, v0

    .line 6990
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

    .line 6995
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupGUID_:Ljava/lang/Object;

    .line 6996
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupLUID_:Ljava/lang/Object;

    .line 6997
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupTitle_:Ljava/lang/Object;

    .line 6998
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    .locals 1

    .prologue
    .line 7116
    #calls: Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->create()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->access$8900()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGroupGUID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 6905
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupGUID_:Ljava/lang/Object;

    .line 6906
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 6907
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 6915
    :goto_0
    return-object v4

    .line 6909
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 6911
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6912
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6913
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupGUID_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 6915
    goto :goto_0
.end method

.method public getGroupLUID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 6937
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupLUID_:Ljava/lang/Object;

    .line 6938
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 6939
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 6947
    :goto_0
    return-object v4

    .line 6941
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 6943
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6944
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6945
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupLUID_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 6947
    goto :goto_0
.end method

.method public getGroupTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 6969
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupTitle_:Ljava/lang/Object;

    .line 6970
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 6971
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 6979
    :goto_0
    return-object v4

    .line 6973
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 6975
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6976
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6977
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->groupTitle_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 6979
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 7024
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->memoizedSerializedSize:I

    .line 7025
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 7041
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 7027
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 7028
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 7029
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupGUIDBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7032
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 7033
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupLUIDBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7036
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 7037
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7040
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->memoizedSerializedSize:I

    move v1, v0

    .line 7041
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasGroupGUID()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6902
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGroupLUID()Z
    .locals 2

    .prologue
    .line 6934
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->bitField0_:I

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

.method public hasGroupTitle()Z
    .locals 2

    .prologue
    .line 6966
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->bitField0_:I

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
    .line 7046
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

    .line 7010
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getSerializedSize()I

    .line 7011
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 7012
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupGUIDBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7014
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 7015
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupLUIDBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7017
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$GroupMembership;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 7018
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->getGroupTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7020
    :cond_2
    return-void
.end method
