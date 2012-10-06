.class public final Lcom/miui/milk/model/ContactProtos$AddressBook;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressBook"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$AddressBook;


# instance fields
.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private group_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Group;",
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
    .line 11154
    new-instance v0, Lcom/miui/milk/model/ContactProtos$AddressBook;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$AddressBook;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$AddressBook;->defaultInstance:Lcom/miui/milk/model/ContactProtos$AddressBook;

    .line 11155
    sget-object v0, Lcom/miui/milk/model/ContactProtos$AddressBook;->defaultInstance:Lcom/miui/milk/model/ContactProtos$AddressBook;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$AddressBook;->initFields()V

    .line 11156
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10666
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10725
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->memoizedIsInitialized:B

    .line 10745
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->memoizedSerializedSize:I

    .line 10667
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10661
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$AddressBook;-><init>(Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10668
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10725
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->memoizedIsInitialized:B

    .line 10745
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->memoizedSerializedSize:I

    .line 10668
    return-void
.end method

.method static synthetic access$13300(Lcom/miui/milk/model/ContactProtos$AddressBook;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10661
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13302(Lcom/miui/milk/model/ContactProtos$AddressBook;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10661
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13400(Lcom/miui/milk/model/ContactProtos$AddressBook;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10661
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13402(Lcom/miui/milk/model/ContactProtos$AddressBook;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10661
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$AddressBook;
    .locals 1

    .prologue
    .line 10672
    sget-object v0, Lcom/miui/milk/model/ContactProtos$AddressBook;->defaultInstance:Lcom/miui/milk/model/ContactProtos$AddressBook;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 10722
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;

    .line 10723
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;

    .line 10724
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;
    .locals 1

    .prologue
    .line 10835
    #calls: Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->create()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->access$13100()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/ContactProtos$AddressBook;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10793
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$AddressBook;->newBuilder()Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;

    #calls: Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->buildParsed()Lcom/miui/milk/model/ContactProtos$AddressBook;
    invoke-static {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;->access$13000(Lcom/miui/milk/model/ContactProtos$AddressBook$Builder;)Lcom/miui/milk/model/ContactProtos$AddressBook;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10704
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;

    return-object v0
.end method

.method public getGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10683
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 10747
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->memoizedSerializedSize:I

    .line 10748
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 10760
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 10750
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 10751
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 10752
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10751
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10755
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 10756
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10755
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10759
    :cond_2
    iput v1, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->memoizedSerializedSize:I

    move v2, v1

    .line 10760
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10727
    iget-byte v0, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->memoizedIsInitialized:B

    .line 10728
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 10731
    :goto_0
    return v1

    .line 10728
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10730
    :cond_1
    iput-byte v2, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->memoizedIsInitialized:B

    move v1, v2

    .line 10731
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
    .line 10765
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
    .line 10736
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$AddressBook;->getSerializedSize()I

    .line 10737
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 10738
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->group_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10740
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 10741
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$AddressBook;->contact_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10740
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10743
    :cond_1
    return-void
.end method
