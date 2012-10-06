.class public final Lcom/miui/milk/model/ContactProtos$Name;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Name$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Name;


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private familyName_:Ljava/lang/Object;

.field private givenName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private middleName_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 651
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Name;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Name;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Name;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Name;

    .line 652
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Name;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Name;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Name;->initFields()V

    .line 653
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Name$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 82
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 230
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->memoizedIsInitialized:B

    .line 256
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->memoizedSerializedSize:I

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Name$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Name;-><init>(Lcom/miui/milk/model/ContactProtos$Name$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 84
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 230
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->memoizedIsInitialized:B

    .line 256
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->memoizedSerializedSize:I

    .line 84
    return-void
.end method

.method static synthetic access$302(Lcom/miui/milk/model/ContactProtos$Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Name;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/ContactProtos$Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Name;->givenName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/milk/model/ContactProtos$Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Name;->middleName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/milk/model/ContactProtos$Name;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Name;->familyName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/milk/model/ContactProtos$Name;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Name;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Name;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Name;

    return-object v0
.end method

.method private getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name;->displayName_:Ljava/lang/Object;

    .line 118
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 119
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 121
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->displayName_:Ljava/lang/Object;

    move-object v2, v0

    .line 124
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

.method private getFamilyNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name;->familyName_:Ljava/lang/Object;

    .line 214
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 215
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 217
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->familyName_:Ljava/lang/Object;

    move-object v2, v0

    .line 220
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

.method private getGivenNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name;->givenName_:Ljava/lang/Object;

    .line 150
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 151
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 153
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->givenName_:Ljava/lang/Object;

    move-object v2, v0

    .line 156
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

.method private getMiddleNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name;->middleName_:Ljava/lang/Object;

    .line 182
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 183
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 185
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->middleName_:Ljava/lang/Object;

    move-object v2, v0

    .line 188
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

    .line 225
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name;->displayName_:Ljava/lang/Object;

    .line 226
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name;->givenName_:Ljava/lang/Object;

    .line 227
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name;->middleName_:Ljava/lang/Object;

    .line 228
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Name;->familyName_:Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Name$Builder;
    .locals 1

    .prologue
    .line 354
    #calls: Lcom/miui/milk/model/ContactProtos$Name$Builder;->create()Lcom/miui/milk/model/ContactProtos$Name$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->access$100()Lcom/miui/milk/model/ContactProtos$Name$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Name$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 357
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Name;->newBuilder()Lcom/miui/milk/model/ContactProtos$Name$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Name$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 103
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Name;->displayName_:Ljava/lang/Object;

    .line 104
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 105
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 113
    :goto_0
    return-object v4

    .line 107
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 109
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Name;->displayName_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 113
    goto :goto_0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 199
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Name;->familyName_:Ljava/lang/Object;

    .line 200
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 201
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 209
    :goto_0
    return-object v4

    .line 203
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 205
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Name;->familyName_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 209
    goto :goto_0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 135
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Name;->givenName_:Ljava/lang/Object;

    .line 136
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 137
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 145
    :goto_0
    return-object v4

    .line 139
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 141
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Name;->givenName_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 145
    goto :goto_0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 167
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Name;->middleName_:Ljava/lang/Object;

    .line 168
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 169
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 177
    :goto_0
    return-object v4

    .line 171
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 173
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Name;->middleName_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 177
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 258
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->memoizedSerializedSize:I

    .line 259
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 279
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 261
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 262
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Name;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 266
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 267
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Name;->getGivenNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 270
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 271
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Name;->getMiddleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 274
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 275
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Name;->getFamilyNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 278
    :cond_4
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->memoizedSerializedSize:I

    move v1, v0

    .line 279
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 100
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFamilyName()Z
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

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

.method public hasGivenName()Z
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

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

.method public hasMiddleName()Z
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

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
    .line 284
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 241
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Name;->getSerializedSize()I

    .line 242
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Name;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 245
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Name;->getGivenNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 248
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 249
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Name;->getMiddleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 251
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Name;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 252
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Name;->getFamilyNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 254
    :cond_3
    return-void
.end method
