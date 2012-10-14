.class public final Lcom/miui/milk/model/CalllogProtos$Call;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CalllogProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/CalllogProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Call"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/CalllogProtos$Call$Builder;,
        Lcom/miui/milk/model/CalllogProtos$Call$CallType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/CalllogProtos$Call;


# instance fields
.field private actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;

.field private bitField0_:I

.field private date_:Ljava/lang/Object;

.field private duration_:J

.field private guid_:Ljava/lang/Object;

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private new_:I

.field private number_:Ljava/lang/Object;

.field private type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 937
    new-instance v0, Lcom/miui/milk/model/CalllogProtos$Call;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/CalllogProtos$Call;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/CalllogProtos$Call;->defaultInstance:Lcom/miui/milk/model/CalllogProtos$Call;

    .line 938
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$Call;->defaultInstance:Lcom/miui/milk/model/CalllogProtos$Call;

    invoke-direct {v0}, Lcom/miui/milk/model/CalllogProtos$Call;->initFields()V

    .line 939
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/CalllogProtos$Call$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 98
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 334
    iput-byte v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->memoizedIsInitialized:B

    .line 372
    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->memoizedSerializedSize:I

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/CalllogProtos$Call$Builder;Lcom/miui/milk/model/CalllogProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/miui/milk/model/CalllogProtos$Call;-><init>(Lcom/miui/milk/model/CalllogProtos$Call$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 100
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 334
    iput-byte v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->memoizedIsInitialized:B

    .line 372
    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->memoizedSerializedSize:I

    .line 100
    return-void
.end method

.method static synthetic access$1002(Lcom/miui/milk/model/CalllogProtos$Call;Lcom/miui/milk/model/CalllogProtos$ActionType;)Lcom/miui/milk/model/CalllogProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/miui/milk/model/CalllogProtos$Call;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/milk/model/CalllogProtos$Call;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/milk/model/CalllogProtos$Call;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/milk/model/CalllogProtos$Call;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->number_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/miui/milk/model/CalllogProtos$Call;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->date_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/miui/milk/model/CalllogProtos$Call;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->duration_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/miui/milk/model/CalllogProtos$Call;Lcom/miui/milk/model/CalllogProtos$Call$CallType;)Lcom/miui/milk/model/CalllogProtos$Call$CallType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    return-object p1
.end method

.method static synthetic access$902(Lcom/miui/milk/model/CalllogProtos$Call;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->new_:I

    return p1
.end method

.method private getDateBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->date_:Ljava/lang/Object;

    .line 274
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 275
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 277
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->date_:Ljava/lang/Object;

    move-object v2, v0

    .line 280
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

.method public static getDefaultInstance()Lcom/miui/milk/model/CalllogProtos$Call;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$Call;->defaultInstance:Lcom/miui/milk/model/CalllogProtos$Call;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->guid_:Ljava/lang/Object;

    .line 178
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 179
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 181
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->guid_:Ljava/lang/Object;

    move-object v2, v0

    .line 184
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
    .line 209
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->luid_:Ljava/lang/Object;

    .line 210
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 211
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 213
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->luid_:Ljava/lang/Object;

    move-object v2, v0

    .line 216
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

.method private getNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->number_:Ljava/lang/Object;

    .line 242
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 243
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 245
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->number_:Ljava/lang/Object;

    move-object v2, v0

    .line 248
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

    .line 325
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->guid_:Ljava/lang/Object;

    .line 326
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->luid_:Ljava/lang/Object;

    .line 327
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->number_:Ljava/lang/Object;

    .line 328
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->date_:Ljava/lang/Object;

    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->duration_:J

    .line 330
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->MISSED:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->new_:I

    .line 332
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/CalllogProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;

    .line 333
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    .locals 1

    .prologue
    .line 486
    #calls: Lcom/miui/milk/model/CalllogProtos$Call$Builder;->create()Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->access$100()Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/CalllogProtos$ActionType;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 259
    iget-object v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->date_:Ljava/lang/Object;

    .line 260
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 261
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 269
    :goto_0
    return-object v4

    .line 263
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 265
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    iput-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call;->date_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 269
    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->duration_:J

    return-wide v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 163
    iget-object v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->guid_:Ljava/lang/Object;

    .line 164
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 165
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 173
    :goto_0
    return-object v4

    .line 167
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 169
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    iput-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 173
    goto :goto_0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 195
    iget-object v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->luid_:Ljava/lang/Object;

    .line 196
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 197
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 205
    :goto_0
    return-object v4

    .line 199
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 201
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    iput-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 205
    goto :goto_0
.end method

.method public getNew()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->new_:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 227
    iget-object v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->number_:Ljava/lang/Object;

    .line 228
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 229
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 237
    :goto_0
    return-object v4

    .line 231
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 233
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    iput-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call;->number_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 237
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 374
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->memoizedSerializedSize:I

    .line 375
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 411
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 377
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 378
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Call;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 382
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 383
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Call;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 386
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 387
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Call;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 390
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 391
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Call;->getDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 394
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 395
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/miui/milk/model/CalllogProtos$Call;->duration_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 398
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 399
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call;->type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 402
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 403
    const/4 v2, 0x7

    iget v3, p0, Lcom/miui/milk/model/CalllogProtos$Call;->new_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 406
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 407
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/miui/milk/model/CalllogProtos$Call;->actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;

    invoke-virtual {v3}, Lcom/miui/milk/model/CalllogProtos$ActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 410
    :cond_8
    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->memoizedSerializedSize:I

    move v1, v0

    .line 411
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getType()Lcom/miui/milk/model/CalllogProtos$Call$CallType;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    return-object v0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 318
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

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

.method public hasDate()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

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

.method public hasDuration()Z
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

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

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 160
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

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
    .line 192
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

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

.method public hasNew()Z
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

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

.method public hasNumber()Z
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

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
    .line 298
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

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

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 416
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

    .line 345
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Call;->getSerializedSize()I

    .line 346
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Call;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 349
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Call;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 352
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 353
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Call;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 355
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 356
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Call;->getDateBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 358
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 359
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->duration_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 361
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 362
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->type_:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 364
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 365
    const/4 v0, 0x7

    iget v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->new_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 367
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 368
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Call;->actionType_:Lcom/miui/milk/model/CalllogProtos$ActionType;

    invoke-virtual {v1}, Lcom/miui/milk/model/CalllogProtos$ActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 370
    :cond_7
    return-void
.end method
