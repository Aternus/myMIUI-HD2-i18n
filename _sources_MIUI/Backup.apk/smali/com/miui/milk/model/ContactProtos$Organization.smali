.class public final Lcom/miui/milk/model/ContactProtos$Organization;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Organization"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Organization$Builder;,
        Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Organization;


# instance fields
.field private bitField0_:I

.field private department_:Ljava/lang/Object;

.field private jobDescription_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private officeLocation_:Ljava/lang/Object;

.field private symbol_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4857
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Organization;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Organization;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Organization;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Organization;

    .line 4858
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Organization;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Organization;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Organization;->initFields()V

    .line 4859
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Organization$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3914
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4216
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->memoizedIsInitialized:B

    .line 4254
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->memoizedSerializedSize:I

    .line 3915
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Organization$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3909
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Organization;-><init>(Lcom/miui/milk/model/ContactProtos$Organization$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3916
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4216
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->memoizedIsInitialized:B

    .line 4254
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->memoizedSerializedSize:I

    .line 3916
    return-void
.end method

.method static synthetic access$5302(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3909
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/miui/milk/model/ContactProtos$Organization;Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;)Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3909
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3909
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3909
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3909
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->department_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3909
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->jobDescription_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3909
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->symbol_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3909
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->officeLocation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/miui/milk/model/ContactProtos$Organization;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3909
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Organization;
    .locals 1

    .prologue
    .line 3920
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Organization;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Organization;

    return-object v0
.end method

.method private getDepartmentBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4099
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->department_:Ljava/lang/Object;

    .line 4100
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4101
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4103
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->department_:Ljava/lang/Object;

    move-object v2, v0

    .line 4106
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

.method private getJobDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4131
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->jobDescription_:Ljava/lang/Object;

    .line 4132
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4133
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4135
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->jobDescription_:Ljava/lang/Object;

    move-object v2, v0

    .line 4138
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

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4035
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->label_:Ljava/lang/Object;

    .line 4036
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4037
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4039
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->label_:Ljava/lang/Object;

    move-object v2, v0

    .line 4042
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

.method private getOfficeLocationBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4195
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->officeLocation_:Ljava/lang/Object;

    .line 4196
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4197
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4199
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->officeLocation_:Ljava/lang/Object;

    move-object v2, v0

    .line 4202
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

.method private getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4163
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->symbol_:Ljava/lang/Object;

    .line 4164
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4165
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4167
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->symbol_:Ljava/lang/Object;

    move-object v2, v0

    .line 4170
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
    .line 4067
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->title_:Ljava/lang/Object;

    .line 4068
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4069
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4071
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 4074
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
    .line 3993
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->value_:Ljava/lang/Object;

    .line 3994
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3995
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3997
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->value_:Ljava/lang/Object;

    move-object v2, v0

    .line 4000
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

    .line 4207
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->value_:Ljava/lang/Object;

    .line 4208
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->WORK:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    .line 4209
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->label_:Ljava/lang/Object;

    .line 4210
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->title_:Ljava/lang/Object;

    .line 4211
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->department_:Ljava/lang/Object;

    .line 4212
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->jobDescription_:Ljava/lang/Object;

    .line 4213
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->symbol_:Ljava/lang/Object;

    .line 4214
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization;->officeLocation_:Ljava/lang/Object;

    .line 4215
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1

    .prologue
    .line 4368
    #calls: Lcom/miui/milk/model/ContactProtos$Organization$Builder;->create()Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->access$5100()Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDepartment()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4085
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->department_:Ljava/lang/Object;

    .line 4086
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 4087
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4095
    :goto_0
    return-object v4

    .line 4089
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4091
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4092
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4093
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization;->department_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 4095
    goto :goto_0
.end method

.method public getJobDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4117
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->jobDescription_:Ljava/lang/Object;

    .line 4118
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 4119
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4127
    :goto_0
    return-object v4

    .line 4121
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4123
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4124
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4125
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization;->jobDescription_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 4127
    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4021
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->label_:Ljava/lang/Object;

    .line 4022
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 4023
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4031
    :goto_0
    return-object v4

    .line 4025
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4027
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4028
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4029
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization;->label_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 4031
    goto :goto_0
.end method

.method public getOfficeLocation()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4181
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->officeLocation_:Ljava/lang/Object;

    .line 4182
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 4183
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4191
    :goto_0
    return-object v4

    .line 4185
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4187
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4188
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4189
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization;->officeLocation_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 4191
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4256
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->memoizedSerializedSize:I

    .line 4257
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4293
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4259
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4260
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4261
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4264
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4265
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4268
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4269
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4272
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 4273
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4276
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 4277
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getDepartmentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4280
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 4281
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getJobDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4284
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 4285
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4288
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 4289
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getOfficeLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4292
    :cond_8
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->memoizedSerializedSize:I

    move v1, v0

    .line 4293
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4149
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->symbol_:Ljava/lang/Object;

    .line 4150
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 4151
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4159
    :goto_0
    return-object v4

    .line 4153
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4155
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4156
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4157
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization;->symbol_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 4159
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4053
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->title_:Ljava/lang/Object;

    .line 4054
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 4055
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4063
    :goto_0
    return-object v4

    .line 4057
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4059
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4060
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4061
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization;->title_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 4063
    goto :goto_0
.end method

.method public getType()Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;
    .locals 1

    .prologue
    .line 4011
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3979
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Organization;->value_:Ljava/lang/Object;

    .line 3980
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3981
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 3989
    :goto_0
    return-object v4

    .line 3983
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 3985
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 3986
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3987
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization;->value_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 3989
    goto :goto_0
.end method

.method public hasDepartment()Z
    .locals 2

    .prologue
    .line 4082
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

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

.method public hasJobDescription()Z
    .locals 2

    .prologue
    .line 4114
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 4018
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

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

.method public hasOfficeLocation()Z
    .locals 2

    .prologue
    .line 4178
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

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

.method public hasSymbol()Z
    .locals 2

    .prologue
    .line 4146
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

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
    .line 4050
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 4008
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

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

    .line 3976
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

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
    .line 4298
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

    .line 4227
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getSerializedSize()I

    .line 4228
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4229
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4231
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4232
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4234
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4235
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4237
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 4238
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4240
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 4241
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getDepartmentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4243
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 4244
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getJobDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4246
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 4247
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4249
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 4250
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization;->getOfficeLocationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4252
    :cond_7
    return-void
.end method
