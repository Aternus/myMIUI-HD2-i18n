.class public final Lcom/miui/milk/model/ContactProtos$Contact;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Contact;


# instance fields
.field private actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

.field private bitField0_:I

.field private deleted_:I

.field private email_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Email;",
            ">;"
        }
    .end annotation
.end field

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Event;",
            ">;"
        }
    .end annotation
.end field

.field private groupMembership_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$GroupMembership;",
            ">;"
        }
    .end annotation
.end field

.field private guid_:Ljava/lang/Object;

.field private im_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Im;",
            ">;"
        }
    .end annotation
.end field

.field private luid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Lcom/miui/milk/model/ContactProtos$Name;

.field private nickname_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Nickname;",
            ">;"
        }
    .end annotation
.end field

.field private note_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Note;",
            ">;"
        }
    .end annotation
.end field

.field private organization_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Organization;",
            ">;"
        }
    .end annotation
.end field

.field private phone_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Phone;",
            ">;"
        }
    .end annotation
.end field

.field private photo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Photo;",
            ">;"
        }
    .end annotation
.end field

.field private postal_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Postal;",
            ">;"
        }
    .end annotation
.end field

.field private version_:I

.field private website_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Website;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9653
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Contact;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Contact;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Contact;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Contact;

    .line 9654
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Contact;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Contact;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Contact;->initFields()V

    .line 9655
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Contact$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7468
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7836
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->memoizedIsInitialized:B

    .line 7901
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->memoizedSerializedSize:I

    .line 7469
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Contact$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Contact;-><init>(Lcom/miui/milk/model/ContactProtos$Contact$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7470
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7836
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->memoizedIsInitialized:B

    .line 7901
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->memoizedSerializedSize:I

    .line 7470
    return-void
.end method

.method static synthetic access$10002(Lcom/miui/milk/model/ContactProtos$Contact;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->version_:I

    return p1
.end method

.method static synthetic access$10102(Lcom/miui/milk/model/ContactProtos$Contact;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->deleted_:I

    return p1
.end method

.method static synthetic access$10202(Lcom/miui/milk/model/ContactProtos$Contact;Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Name;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    return-object p1
.end method

.method static synthetic access$10300(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7463
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10302(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10400(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7463
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10500(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7463
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10600(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7463
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10700(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7463
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10702(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10800(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7463
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10802(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10900(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7463
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11000(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7463
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7463
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11102(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11200(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7463
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11202(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11300(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7463
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11302(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11402(Lcom/miui/milk/model/ContactProtos$Contact;Lcom/miui/milk/model/ContactProtos$ActionType;)Lcom/miui/milk/model/ContactProtos$ActionType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    return-object p1
.end method

.method static synthetic access$11502(Lcom/miui/milk/model/ContactProtos$Contact;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    return p1
.end method

.method static synthetic access$9802(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->guid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9902(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7463
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->luid_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Contact;
    .locals 1

    .prologue
    .line 7474
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Contact;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Contact;

    return-object v0
.end method

.method private getGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 7503
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->guid_:Ljava/lang/Object;

    .line 7504
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7505
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7507
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->guid_:Ljava/lang/Object;

    move-object v2, v0

    .line 7510
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
    .line 7535
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->luid_:Ljava/lang/Object;

    .line 7536
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7537
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7539
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->luid_:Ljava/lang/Object;

    move-object v2, v0

    .line 7542
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
    const/4 v1, 0x0

    const-string v2, ""

    .line 7818
    const-string v0, ""

    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Contact;->guid_:Ljava/lang/Object;

    .line 7819
    const-string v0, ""

    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Contact;->luid_:Ljava/lang/Object;

    .line 7820
    iput v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->version_:I

    .line 7821
    iput v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->deleted_:I

    .line 7822
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Name;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Name;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    .line 7823
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;

    .line 7824
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;

    .line 7825
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;

    .line 7826
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;

    .line 7827
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;

    .line 7828
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;

    .line 7829
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;

    .line 7830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;

    .line 7831
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;

    .line 7832
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;

    .line 7833
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;

    .line 7834
    sget-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/ContactProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 7835
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1

    .prologue
    .line 8051
    #calls: Lcom/miui/milk/model/ContactProtos$Contact$Builder;->create()Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->access$9600()Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/miui/milk/model/ContactProtos$ActionType;
    .locals 1

    .prologue
    .line 7814
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    return-object v0
.end method

.method public getDeleted()I
    .locals 1

    .prologue
    .line 7563
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->deleted_:I

    return v0
.end method

.method public getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Email;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7601
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;

    return-object v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7622
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getGroupMembershipList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$GroupMembership;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7790
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 7489
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Contact;->guid_:Ljava/lang/Object;

    .line 7490
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 7491
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 7499
    :goto_0
    return-object v4

    .line 7493
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 7495
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 7496
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7497
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->guid_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 7499
    goto :goto_0
.end method

.method public getImList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Im;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7643
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;

    return-object v0
.end method

.method public getLuid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 7521
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Contact;->luid_:Ljava/lang/Object;

    .line 7522
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 7523
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 7531
    :goto_0
    return-object v4

    .line 7525
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 7527
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 7528
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7529
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->luid_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 7531
    goto :goto_0
.end method

.method public getName()Lcom/miui/milk/model/ContactProtos$Name;
    .locals 1

    .prologue
    .line 7573
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    return-object v0
.end method

.method public getNicknameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Nickname;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7664
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;

    return-object v0
.end method

.method public getNoteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Note;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7685
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;

    return-object v0
.end method

.method public getOrganizationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Organization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7706
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7580
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7727
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getPostalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Postal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7748
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 7903
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->memoizedSerializedSize:I

    .line 7904
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 7976
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 7906
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 7907
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 7908
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7911
    :cond_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 7912
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7915
    :cond_2
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3

    .line 7916
    const/4 v3, 0x3

    iget v4, p0, Lcom/miui/milk/model/ContactProtos$Contact;->version_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 7919
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_4

    .line 7920
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->deleted_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 7923
    :cond_4
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-ne v3, v8, :cond_5

    .line 7924
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/miui/milk/model/ContactProtos$Contact;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7927
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 7928
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7927
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7931
    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 7932
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7931
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7935
    :cond_7
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 7936
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7935
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7939
    :cond_8
    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 7940
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7939
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7943
    :cond_9
    const/4 v0, 0x0

    :goto_5
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 7944
    const/16 v4, 0xa

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7943
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7947
    :cond_a
    const/4 v0, 0x0

    :goto_6
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 7948
    const/16 v4, 0xb

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7947
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 7951
    :cond_b
    const/4 v0, 0x0

    :goto_7
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 7952
    const/16 v4, 0xc

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7951
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7955
    :cond_c
    const/4 v0, 0x0

    :goto_8
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 7956
    const/16 v4, 0xd

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7955
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 7959
    :cond_d
    const/4 v0, 0x0

    :goto_9
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 7960
    const/16 v4, 0xe

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7959
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 7963
    :cond_e
    const/4 v0, 0x0

    :goto_a
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 7964
    const/16 v4, 0xf

    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7963
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 7967
    :cond_f
    const/4 v0, 0x0

    :goto_b
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 7968
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7967
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 7971
    :cond_10
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_11

    .line 7972
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/miui/milk/model/ContactProtos$Contact;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos$ActionType;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 7975
    :cond_11
    iput v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->memoizedSerializedSize:I

    move v2, v1

    .line 7976
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 7553
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->version_:I

    return v0
.end method

.method public getWebsiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Website;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7769
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;

    return-object v0
.end method

.method public hasActionType()Z
    .locals 2

    .prologue
    .line 7811
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

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

.method public hasDeleted()Z
    .locals 2

    .prologue
    .line 7560
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

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

.method public hasGuid()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7486
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

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
    .line 7518
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 7570
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

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
    .line 7550
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

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
    .line 7981
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7847
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getSerializedSize()I

    .line 7848
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 7849
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7851
    :cond_0
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 7852
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact;->getLuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7854
    :cond_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 7855
    const/4 v1, 0x3

    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Contact;->version_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7857
    :cond_2
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 7858
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->deleted_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7860
    :cond_3
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_4

    .line 7861
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Contact;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7863
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 7864
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7866
    :cond_5
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 7867
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7866
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7869
    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 7870
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7869
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7872
    :cond_7
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 7873
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7872
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7875
    :cond_8
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 7876
    const/16 v2, 0xa

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7875
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 7878
    :cond_9
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 7879
    const/16 v2, 0xb

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7878
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7881
    :cond_a
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 7882
    const/16 v2, 0xc

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7881
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 7884
    :cond_b
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 7885
    const/16 v2, 0xd

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7884
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7887
    :cond_c
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 7888
    const/16 v2, 0xe

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7887
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 7890
    :cond_d
    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 7891
    const/16 v2, 0xf

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7890
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 7893
    :cond_e
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 7894
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7893
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 7896
    :cond_f
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_10

    .line 7897
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Contact;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$ActionType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7899
    :cond_10
    return-void
.end method
