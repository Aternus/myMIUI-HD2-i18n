.class public final Lcom/miui/milk/model/ContactProtos$Contact$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Contact;",
        "Lcom/miui/milk/model/ContactProtos$Contact$Builder;",
        ">;"
    }
.end annotation


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
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 8063
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8490
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->guid_:Ljava/lang/Object;

    .line 8526
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->luid_:Ljava/lang/Object;

    .line 8604
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Name;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Name;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    .line 8647
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->phone_:Ljava/util/List;

    .line 8736
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->email_:Ljava/util/List;

    .line 8825
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->event_:Ljava/util/List;

    .line 8914
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->im_:Ljava/util/List;

    .line 9003
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->nickname_:Ljava/util/List;

    .line 9092
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->note_:Ljava/util/List;

    .line 9181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->organization_:Ljava/util/List;

    .line 9270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->photo_:Ljava/util/List;

    .line 9359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->postal_:Ljava/util/List;

    .line 9448
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->website_:Ljava/util/List;

    .line 9537
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->groupMembership_:Ljava/util/List;

    .line 9626
    sget-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/ContactProtos$ActionType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 8064
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->maybeForceBuilderInitialization()V

    .line 8065
    return-void
.end method

.method static synthetic access$9600()Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->create()Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1

    .prologue
    .line 8070
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEmailIsMutable()V
    .locals 2

    .prologue
    .line 8739
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 8740
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->email_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->email_:Ljava/util/List;

    .line 8741
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8743
    :cond_0
    return-void
.end method

.method private ensureEventIsMutable()V
    .locals 2

    .prologue
    .line 8828
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 8829
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->event_:Ljava/util/List;

    .line 8830
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8832
    :cond_0
    return-void
.end method

.method private ensureGroupMembershipIsMutable()V
    .locals 3

    .prologue
    const v2, 0x8000

    .line 9540
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 9541
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->groupMembership_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->groupMembership_:Ljava/util/List;

    .line 9542
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 9544
    :cond_0
    return-void
.end method

.method private ensureImIsMutable()V
    .locals 2

    .prologue
    .line 8917
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 8918
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->im_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->im_:Ljava/util/List;

    .line 8919
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8921
    :cond_0
    return-void
.end method

.method private ensureNicknameIsMutable()V
    .locals 2

    .prologue
    .line 9006
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 9007
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->nickname_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->nickname_:Ljava/util/List;

    .line 9008
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 9010
    :cond_0
    return-void
.end method

.method private ensureNoteIsMutable()V
    .locals 2

    .prologue
    .line 9095
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 9096
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->note_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->note_:Ljava/util/List;

    .line 9097
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 9099
    :cond_0
    return-void
.end method

.method private ensureOrganizationIsMutable()V
    .locals 2

    .prologue
    .line 9184
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_0

    .line 9185
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->organization_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->organization_:Ljava/util/List;

    .line 9186
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 9188
    :cond_0
    return-void
.end method

.method private ensurePhoneIsMutable()V
    .locals 2

    .prologue
    .line 8650
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 8651
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->phone_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->phone_:Ljava/util/List;

    .line 8652
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8654
    :cond_0
    return-void
.end method

.method private ensurePhotoIsMutable()V
    .locals 2

    .prologue
    .line 9273
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    .line 9274
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->photo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->photo_:Ljava/util/List;

    .line 9275
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 9277
    :cond_0
    return-void
.end method

.method private ensurePostalIsMutable()V
    .locals 2

    .prologue
    .line 9362
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    .line 9363
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->postal_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->postal_:Ljava/util/List;

    .line 9364
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 9366
    :cond_0
    return-void
.end method

.method private ensureWebsiteIsMutable()V
    .locals 2

    .prologue
    .line 9451
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    .line 9452
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->website_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->website_:Ljava/util/List;

    .line 9453
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 9455
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 8068
    return-void
.end method


# virtual methods
.method public addEmail(Lcom/miui/milk/model/ContactProtos$Email;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8772
    if-nez p1, :cond_0

    .line 8773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8775
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureEmailIsMutable()V

    .line 8776
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->email_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8778
    return-object p0
.end method

.method public addEvent(Lcom/miui/milk/model/ContactProtos$Event;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8861
    if-nez p1, :cond_0

    .line 8862
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8864
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureEventIsMutable()V

    .line 8865
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8867
    return-object p0
.end method

.method public addGroupMembership(Lcom/miui/milk/model/ContactProtos$GroupMembership;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9573
    if-nez p1, :cond_0

    .line 9574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9576
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureGroupMembershipIsMutable()V

    .line 9577
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->groupMembership_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9579
    return-object p0
.end method

.method public addIm(Lcom/miui/milk/model/ContactProtos$Im;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8950
    if-nez p1, :cond_0

    .line 8951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8953
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureImIsMutable()V

    .line 8954
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->im_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8956
    return-object p0
.end method

.method public addNickname(Lcom/miui/milk/model/ContactProtos$Nickname;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9039
    if-nez p1, :cond_0

    .line 9040
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9042
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureNicknameIsMutable()V

    .line 9043
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->nickname_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9045
    return-object p0
.end method

.method public addNote(Lcom/miui/milk/model/ContactProtos$Note;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9128
    if-nez p1, :cond_0

    .line 9129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9131
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureNoteIsMutable()V

    .line 9132
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->note_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9134
    return-object p0
.end method

.method public addOrganization(Lcom/miui/milk/model/ContactProtos$Organization;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9217
    if-nez p1, :cond_0

    .line 9218
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9220
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureOrganizationIsMutable()V

    .line 9221
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->organization_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9223
    return-object p0
.end method

.method public addPhone(Lcom/miui/milk/model/ContactProtos$Phone;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8683
    if-nez p1, :cond_0

    .line 8684
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8686
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensurePhoneIsMutable()V

    .line 8687
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8689
    return-object p0
.end method

.method public addPhoto(Lcom/miui/milk/model/ContactProtos$Photo;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9306
    if-nez p1, :cond_0

    .line 9307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9309
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensurePhotoIsMutable()V

    .line 9310
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9312
    return-object p0
.end method

.method public addPostal(Lcom/miui/milk/model/ContactProtos$Postal;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9395
    if-nez p1, :cond_0

    .line 9396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9398
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensurePostalIsMutable()V

    .line 9399
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->postal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9401
    return-object p0
.end method

.method public addWebsite(Lcom/miui/milk/model/ContactProtos$Website;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9484
    if-nez p1, :cond_0

    .line 9485
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9487
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureWebsiteIsMutable()V

    .line 9488
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->website_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9490
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Contact;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Contact;
    .locals 7

    .prologue
    const/high16 v6, 0x1

    const v5, 0x8000

    .line 8139
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Contact;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Contact;-><init>(Lcom/miui/milk/model/ContactProtos$Contact$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 8140
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Contact;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8141
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8142
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8143
    or-int/lit8 v2, v2, 0x1

    .line 8145
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->guid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->guid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$9802(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8146
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8147
    or-int/lit8 v2, v2, 0x2

    .line 8149
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->luid_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->luid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$9902(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8150
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8151
    or-int/lit8 v2, v2, 0x4

    .line 8153
    :cond_2
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->version_:I

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->version_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10002(Lcom/miui/milk/model/ContactProtos$Contact;I)I

    .line 8154
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 8155
    or-int/lit8 v2, v2, 0x8

    .line 8157
    :cond_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->deleted_:I

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->deleted_:I
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10102(Lcom/miui/milk/model/ContactProtos$Contact;I)I

    .line 8158
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 8159
    or-int/lit8 v2, v2, 0x10

    .line 8161
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->name_:Lcom/miui/milk/model/ContactProtos$Name;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10202(Lcom/miui/milk/model/ContactProtos$Contact;Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Name;

    .line 8162
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 8163
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->phone_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->phone_:Ljava/util/List;

    .line 8164
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8166
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->phone_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10302(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8167
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 8168
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->email_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->email_:Ljava/util/List;

    .line 8169
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8171
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->email_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10402(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8172
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 8173
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->event_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->event_:Ljava/util/List;

    .line 8174
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8176
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->event_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10502(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8177
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 8178
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->im_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->im_:Ljava/util/List;

    .line 8179
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8181
    :cond_8
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->im_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10602(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8182
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 8183
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->nickname_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->nickname_:Ljava/util/List;

    .line 8184
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8186
    :cond_9
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->nickname_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10702(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8187
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 8188
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->note_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->note_:Ljava/util/List;

    .line 8189
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8191
    :cond_a
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->note_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10802(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8192
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 8193
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->organization_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->organization_:Ljava/util/List;

    .line 8194
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x801

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8196
    :cond_b
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->organization_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10902(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8197
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 8198
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->photo_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->photo_:Ljava/util/List;

    .line 8199
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x1001

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8201
    :cond_c
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->photo_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11002(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8202
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 8203
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->postal_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->postal_:Ljava/util/List;

    .line 8204
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8206
    :cond_d
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->postal_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11102(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8207
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 8208
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->website_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->website_:Ljava/util/List;

    .line 8209
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x4001

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8211
    :cond_e
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->website_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11202(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8212
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_f

    .line 8213
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->groupMembership_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->groupMembership_:Ljava/util/List;

    .line 8214
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8216
    :cond_f
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->groupMembership_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11302(Lcom/miui/milk/model/ContactProtos$Contact;Ljava/util/List;)Ljava/util/List;

    .line 8217
    and-int v3, v0, v6

    if-ne v3, v6, :cond_10

    .line 8218
    or-int/lit8 v2, v2, 0x20

    .line 8220
    :cond_10
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11402(Lcom/miui/milk/model/ContactProtos$Contact;Lcom/miui/milk/model/ContactProtos$ActionType;)Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 8221
    #setter for: Lcom/miui/milk/model/ContactProtos$Contact;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11502(Lcom/miui/milk/model/ContactProtos$Contact;I)I

    .line 8222
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 2

    .prologue
    .line 8113
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->create()Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Contact;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Contact;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lcom/miui/milk/model/ContactProtos$Name;
    .locals 1

    .prologue
    .line 8609
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 8606
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8058
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8058
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8367
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 8368
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 8373
    invoke-virtual {p0, p1, p2, v2}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8375
    :sswitch_0
    return-object p0

    .line 8380
    :sswitch_1
    iget v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8381
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->guid_:Ljava/lang/Object;

    goto :goto_0

    .line 8385
    :sswitch_2
    iget v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8386
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->luid_:Ljava/lang/Object;

    goto :goto_0

    .line 8390
    :sswitch_3
    iget v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8391
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->version_:I

    goto :goto_0

    .line 8395
    :sswitch_4
    iget v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8396
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->deleted_:I

    goto :goto_0

    .line 8400
    :sswitch_5
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Name;->newBuilder()Lcom/miui/milk/model/ContactProtos$Name$Builder;

    move-result-object v1

    .line 8401
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$Name$Builder;
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->hasName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8402
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->getName()Lcom/miui/milk/model/ContactProtos$Name;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Name$Builder;

    .line 8404
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8405
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Name;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->setName(Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto :goto_0

    .line 8409
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$Name$Builder;
    :sswitch_6
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Phone;->newBuilder()Lcom/miui/milk/model/ContactProtos$Phone$Builder;

    move-result-object v1

    .line 8410
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8411
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Phone$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Phone;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->addPhone(Lcom/miui/milk/model/ContactProtos$Phone;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto :goto_0

    .line 8415
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$Phone$Builder;
    :sswitch_7
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Email;->newBuilder()Lcom/miui/milk/model/ContactProtos$Email$Builder;

    move-result-object v1

    .line 8416
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$Email$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8417
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Email;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->addEmail(Lcom/miui/milk/model/ContactProtos$Email;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto :goto_0

    .line 8421
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$Email$Builder;
    :sswitch_8
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Event;->newBuilder()Lcom/miui/milk/model/ContactProtos$Event$Builder;

    move-result-object v1

    .line 8422
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$Event$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8423
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->addEvent(Lcom/miui/milk/model/ContactProtos$Event;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto/16 :goto_0

    .line 8427
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$Event$Builder;
    :sswitch_9
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Im;->newBuilder()Lcom/miui/milk/model/ContactProtos$Im$Builder;

    move-result-object v1

    .line 8428
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$Im$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8429
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Im;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->addIm(Lcom/miui/milk/model/ContactProtos$Im;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto/16 :goto_0

    .line 8433
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$Im$Builder;
    :sswitch_a
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Nickname;->newBuilder()Lcom/miui/milk/model/ContactProtos$Nickname$Builder;

    move-result-object v1

    .line 8434
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8435
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Nickname$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Nickname;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->addNickname(Lcom/miui/milk/model/ContactProtos$Nickname;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto/16 :goto_0

    .line 8439
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$Nickname$Builder;
    :sswitch_b
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Note;->newBuilder()Lcom/miui/milk/model/ContactProtos$Note$Builder;

    move-result-object v1

    .line 8440
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$Note$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8441
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Note$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Note;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->addNote(Lcom/miui/milk/model/ContactProtos$Note;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto/16 :goto_0

    .line 8445
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$Note$Builder;
    :sswitch_c
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Organization;->newBuilder()Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    move-result-object v1

    .line 8446
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8447
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Organization;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->addOrganization(Lcom/miui/milk/model/ContactProtos$Organization;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto/16 :goto_0

    .line 8451
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    :sswitch_d
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Photo;->newBuilder()Lcom/miui/milk/model/ContactProtos$Photo$Builder;

    move-result-object v1

    .line 8452
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$Photo$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8453
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Photo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->addPhoto(Lcom/miui/milk/model/ContactProtos$Photo;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto/16 :goto_0

    .line 8457
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$Photo$Builder;
    :sswitch_e
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Postal;->newBuilder()Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    move-result-object v1

    .line 8458
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8459
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Postal;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->addPostal(Lcom/miui/milk/model/ContactProtos$Postal;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto/16 :goto_0

    .line 8463
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    :sswitch_f
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Website;->newBuilder()Lcom/miui/milk/model/ContactProtos$Website$Builder;

    move-result-object v1

    .line 8464
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$Website$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8465
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Website;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->addWebsite(Lcom/miui/milk/model/ContactProtos$Website;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto/16 :goto_0

    .line 8469
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$Website$Builder;
    :sswitch_10
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$GroupMembership;->newBuilder()Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;

    move-result-object v1

    .line 8470
    .local v1, subBuilder:Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 8471
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$GroupMembership;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->addGroupMembership(Lcom/miui/milk/model/ContactProtos$GroupMembership;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto/16 :goto_0

    .line 8475
    .end local v1           #subBuilder:Lcom/miui/milk/model/ContactProtos$GroupMembership$Builder;
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 8476
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$ActionType;->valueOf(I)Lcom/miui/milk/model/ContactProtos$ActionType;

    move-result-object v3

    .line 8477
    .local v3, value:Lcom/miui/milk/model/ContactProtos$ActionType;
    if-eqz v3, :cond_0

    .line 8478
    iget v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8479
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    goto/16 :goto_0

    .line 8368
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0xa0 -> :sswitch_11
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Contact;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 8226
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Contact;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Contact;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 8355
    :cond_0
    :goto_0
    return-object p0

    .line 8227
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->hasGuid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8228
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    .line 8230
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->hasLuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8231
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->getLuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    .line 8233
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8234
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->setVersion(I)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    .line 8236
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->hasDeleted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8237
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->getDeleted()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->setDeleted(I)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    .line 8239
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8240
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->getName()Lcom/miui/milk/model/ContactProtos$Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->mergeName(Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    .line 8242
    :cond_6
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10300(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8243
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8244
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10300(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->phone_:Ljava/util/List;

    .line 8245
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8252
    :cond_7
    :goto_1
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10400(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 8253
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->email_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 8254
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10400(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->email_:Ljava/util/List;

    .line 8255
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8262
    :cond_8
    :goto_2
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10500(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 8263
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8264
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10500(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->event_:Ljava/util/List;

    .line 8265
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8272
    :cond_9
    :goto_3
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10600(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 8273
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->im_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8274
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10600(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->im_:Ljava/util/List;

    .line 8275
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8282
    :cond_a
    :goto_4
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10700(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 8283
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->nickname_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 8284
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10700(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->nickname_:Ljava/util/List;

    .line 8285
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8292
    :cond_b
    :goto_5
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10800(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 8293
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->note_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 8294
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10800(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->note_:Ljava/util/List;

    .line 8295
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8302
    :cond_c
    :goto_6
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10900(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 8303
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->organization_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 8304
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10900(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->organization_:Ljava/util/List;

    .line 8305
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8312
    :cond_d
    :goto_7
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11000(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 8313
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 8314
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11000(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->photo_:Ljava/util/List;

    .line 8315
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8322
    :cond_e
    :goto_8
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11100(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 8323
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->postal_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 8324
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11100(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->postal_:Ljava/util/List;

    .line 8325
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8332
    :cond_f
    :goto_9
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11200(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 8333
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->website_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 8334
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11200(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->website_:Ljava/util/List;

    .line 8335
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8342
    :cond_10
    :goto_a
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11300(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 8343
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->groupMembership_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 8344
    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11300(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->groupMembership_:Ljava/util/List;

    .line 8345
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8352
    :cond_11
    :goto_b
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8353
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->getActionType()Lcom/miui/milk/model/ContactProtos$ActionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->setActionType(Lcom/miui/milk/model/ContactProtos$ActionType;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;

    goto/16 :goto_0

    .line 8247
    :cond_12
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensurePhoneIsMutable()V

    .line 8248
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->phone_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10300(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 8257
    :cond_13
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureEmailIsMutable()V

    .line 8258
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->email_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->email_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10400(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 8267
    :cond_14
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureEventIsMutable()V

    .line 8268
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->event_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->event_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10500(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 8277
    :cond_15
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureImIsMutable()V

    .line 8278
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->im_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->im_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10600(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 8287
    :cond_16
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureNicknameIsMutable()V

    .line 8288
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->nickname_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->nickname_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10700(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 8297
    :cond_17
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureNoteIsMutable()V

    .line 8298
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->note_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->note_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10800(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 8307
    :cond_18
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureOrganizationIsMutable()V

    .line 8308
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->organization_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->organization_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$10900(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    .line 8317
    :cond_19
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensurePhotoIsMutable()V

    .line 8318
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->photo_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11000(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    .line 8327
    :cond_1a
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensurePostalIsMutable()V

    .line 8328
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->postal_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->postal_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11100(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9

    .line 8337
    :cond_1b
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureWebsiteIsMutable()V

    .line 8338
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->website_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->website_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11200(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a

    .line 8347
    :cond_1c
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->ensureGroupMembershipIsMutable()V

    .line 8348
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->groupMembership_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/ContactProtos$Contact;->groupMembership_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/ContactProtos$Contact;->access$11300(Lcom/miui/milk/model/ContactProtos$Contact;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_b
.end method

.method public mergeName(Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8628
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Name;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Name;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8630
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$Name;->newBuilder(Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Name$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Name$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Name$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Name;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    .line 8636
    :goto_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8637
    return-object p0

    .line 8633
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    goto :goto_0
.end method

.method public setActionType(Lcom/miui/milk/model/ContactProtos$ActionType;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9634
    if-nez p1, :cond_0

    .line 9635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9637
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 9638
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->actionType_:Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 9640
    return-object p0
.end method

.method public setDeleted(I)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8591
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8592
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->deleted_:I

    .line 8594
    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8505
    if-nez p1, :cond_0

    .line 8506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8508
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8509
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->guid_:Ljava/lang/Object;

    .line 8511
    return-object p0
.end method

.method public setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8541
    if-nez p1, :cond_0

    .line 8542
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8544
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8545
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->luid_:Ljava/lang/Object;

    .line 8547
    return-object p0
.end method

.method public setName(Lcom/miui/milk/model/ContactProtos$Name;)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8612
    if-nez p1, :cond_0

    .line 8613
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8615
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->name_:Lcom/miui/milk/model/ContactProtos$Name;

    .line 8617
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8618
    return-object p0
.end method

.method public setVersion(I)Lcom/miui/milk/model/ContactProtos$Contact$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8570
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->bitField0_:I

    .line 8571
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Contact$Builder;->version_:I

    .line 8573
    return-object p0
.end method
