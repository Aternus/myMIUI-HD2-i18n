.class public final Lcom/miui/milk/model/ContactProtos$Nickname;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Nickname"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Nickname$Builder;,
        Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Nickname;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3549
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Nickname;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Nickname;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Nickname;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Nickname;

    .line 3550
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Nickname;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Nickname;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Nickname;->initFields()V

    .line 3551
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Nickname$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3047
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3193
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->memoizedIsInitialized:B

    .line 3216
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->memoizedSerializedSize:I

    .line 3048
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Nickname$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3042
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Nickname;-><init>(Lcom/miui/milk/model/ContactProtos$Nickname$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3049
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3193
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->memoizedIsInitialized:B

    .line 3216
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->memoizedSerializedSize:I

    .line 3049
    return-void
.end method

.method static synthetic access$4102(Lcom/miui/milk/model/ContactProtos$Nickname;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3042
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/miui/milk/model/ContactProtos$Nickname;Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;)Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3042
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/miui/milk/model/ContactProtos$Nickname;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3042
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/miui/milk/model/ContactProtos$Nickname;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3042
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Nickname;
    .locals 1

    .prologue
    .line 3053
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Nickname;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Nickname;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3177
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->label_:Ljava/lang/Object;

    .line 3178
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3179
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3181
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->label_:Ljava/lang/Object;

    move-object v2, v0

    .line 3184
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
    .line 3135
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->value_:Ljava/lang/Object;

    .line 3136
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3137
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3139
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->value_:Ljava/lang/Object;

    move-object v2, v0

    .line 3142
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

    .line 3189
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->value_:Ljava/lang/Object;

    .line 3190
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->DEFAULT:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    .line 3191
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->label_:Ljava/lang/Object;

    .line 3192
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    .locals 1

    .prologue
    .line 3310
    #calls: Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->create()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->access$3900()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3163
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->label_:Ljava/lang/Object;

    .line 3164
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3165
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 3173
    :goto_0
    return-object v4

    .line 3167
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 3169
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3170
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3171
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->label_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 3173
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3218
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->memoizedSerializedSize:I

    .line 3219
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3235
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 3221
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 3222
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3223
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Nickname;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3226
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 3227
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3230
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 3231
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Nickname;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3234
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->memoizedSerializedSize:I

    move v1, v0

    .line 3235
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;
    .locals 1

    .prologue
    .line 3153
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3121
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->value_:Ljava/lang/Object;

    .line 3122
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3123
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 3131
    :goto_0
    return-object v4

    .line 3125
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 3127
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3128
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3129
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->value_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 3131
    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 3160
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->bitField0_:I

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
    .line 3150
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->bitField0_:I

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

    .line 3118
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->bitField0_:I

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
    .line 3240
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

    .line 3204
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Nickname;->getSerializedSize()I

    .line 3205
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3206
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Nickname;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3208
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3209
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->type_:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3211
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 3212
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Nickname;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3214
    :cond_2
    return-void
.end method
