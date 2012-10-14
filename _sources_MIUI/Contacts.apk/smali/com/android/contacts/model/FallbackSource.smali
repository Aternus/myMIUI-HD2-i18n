.class public Lcom/android/contacts/model/FallbackSource;
.super Lcom/android/contacts/model/ContactsSource;
.source "FallbackSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/FallbackSource$ImActionInflater;,
        Lcom/android/contacts/model/FallbackSource$PostalActionInflater;,
        Lcom/android/contacts/model/FallbackSource$EventActionInflater;,
        Lcom/android/contacts/model/FallbackSource$EmailActionInflater;,
        Lcom/android/contacts/model/FallbackSource$PhoneActionAltInflater;,
        Lcom/android/contacts/model/FallbackSource$PhoneActionInflater;,
        Lcom/android/contacts/model/FallbackSource$CommonInflater;,
        Lcom/android/contacts/model/FallbackSource$EventDateInflater;,
        Lcom/android/contacts/model/FallbackSource$SimpleInflater;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/contacts/model/ContactsSource;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/ContactsSource;->accountType:Ljava/lang/String;

    .line 72
    const v0, 0x7f0b00b3

    iput v0, p0, Lcom/android/contacts/model/ContactsSource;->titleRes:I

    .line 73
    const v0, 0x7f020074

    iput v0, p0, Lcom/android/contacts/model/ContactsSource;->iconRes:I

    .line 74
    return-void
.end method


# virtual methods
.method protected buildEmailType(I)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 113
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(II)V

    return-object v0
.end method

.method protected buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 3
    .parameter "type"

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_0

    .line 129
    :pswitch_0
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(II)V

    :goto_0
    return-object v0

    .line 123
    :pswitch_1
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v1

    const v2, 0x7f0200f3

    invoke-direct {v0, p1, v1, v2}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    goto :goto_0

    .line 125
    :pswitch_2
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v1

    const v2, 0x7f0200ec

    invoke-direct {v0, p1, v1, v2}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    goto :goto_0

    .line 127
    :pswitch_3
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v1

    const v2, 0x7f0200e8

    invoke-direct {v0, p1, v1, v2}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected buildOrgType(I)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 134
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Organization;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(II)V

    return-object v0
.end method

.method protected buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 3
    .parameter "type"

    .prologue
    const v2, 0x7f0200eb

    .line 98
    packed-switch p1, :pswitch_data_0

    .line 108
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    goto :goto_0

    .line 102
    :pswitch_1
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    const v1, 0x7f0b0134

    const v2, 0x7f0200e5

    invoke-direct {v0, p1, v1, v2}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    goto :goto_0

    .line 104
    :pswitch_2
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    const v1, 0x7f0b0133

    const v2, 0x7f0200e9

    invoke-direct {v0, p1, v1, v2}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    goto :goto_0

    .line 106
    :pswitch_3
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    const v1, 0x7f0b0132

    const v2, 0x7f0200f9

    invoke-direct {v0, p1, v1, v2}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected buildPostalType(I)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 2
    .parameter "type"

    .prologue
    .line 117
    new-instance v0, Lcom/android/contacts/model/ContactsSource$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(II)V

    return-object v0
.end method

.method protected inflate(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflateStructuredName(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflateNickname(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflatePhone(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflatePhoto(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflateEmail(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflateIm(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflateOrganization(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflateStructuredPostal(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflateGroup(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflateNote(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflateWebsite(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflateEvent(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/FallbackSource;->inflateSipAddress(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 93
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/FallbackSource;->setInflatedLevel(I)V

    .line 95
    return-void
.end method

.method protected inflateEmail(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 9
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const v2, 0x7f0b003c

    const/4 v7, 0x3

    const/4 v5, 0x1

    const-string v1, "vnd.android.cursor.item/email_v2"

    const-string v8, "data1"

    .line 202
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 203
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 204
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v3, "vnd.android.cursor.item/email_v2"

    const v3, 0x7f0200e4

    const/16 v4, 0x19

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 206
    new-instance v0, Lcom/android/contacts/model/FallbackSource$EmailActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/FallbackSource$EmailActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 207
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v8}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 210
    :cond_0
    if-lt p2, v7, :cond_1

    .line 211
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    .line 213
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/FallbackSource;->buildEmailType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildEmailType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/FallbackSource;->buildEmailType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 218
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const/16 v3, 0x21

    invoke-direct {v1, v8, v2, v3}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_1
    return-object v6
.end method

.method protected inflateEvent(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 9
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const v8, 0x1040270

    const/4 v7, 0x3

    const/4 v5, 0x1

    const v3, 0x7f0200e2

    const-string v1, "vnd.android.cursor.item/contact_event"

    .line 391
    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 392
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 393
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v2, "vnd.android.cursor.item/contact_event"

    const v2, 0x7f0b00b0

    const/16 v4, 0x1e

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 395
    new-instance v0, Lcom/android/contacts/model/FallbackSource$EventActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/FallbackSource$EventActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 396
    new-instance v0, Lcom/android/contacts/model/FallbackSource$EventDateInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/FallbackSource$EventDateInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 397
    iput v5, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    .line 400
    :cond_0
    if-lt p2, v7, :cond_1

    .line 401
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    .line 402
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    .line 403
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditType;

    invoke-direct {v1, v7, v8, v3}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditType;

    const/4 v2, 0x2

    const v4, 0x1040271

    invoke-direct {v1, v2, v4, v3}, Lcom/android/contacts/model/ContactsSource$EditType;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 412
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data1"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v8, v3}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_1
    return-object v6
.end method

.method protected inflateGroup(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 9
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v7, -0x1

    const-string v1, "vnd.android.cursor.item/group_membership"

    const-string v8, "data1"

    .line 322
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 323
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 324
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v2, "vnd.android.cursor.item/group_membership"

    const v2, 0x7f0b0106

    const v3, 0x7f0200e7

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 326
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v8}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 329
    :cond_0
    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    .line 330
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 331
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data1"

    invoke-direct {v1, v8, v7, v7}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_1
    return-object v6
.end method

.method protected inflateIm(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 10
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v5, 0x1

    const-string v1, "vnd.android.cursor.item/im"

    const-string v9, "data1"

    .line 260
    const-string v0, "vnd.android.cursor.item/im"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 261
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 262
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v2, "vnd.android.cursor.item/im"

    const v2, 0x7f0b003d

    const v3, 0x108008e

    const/16 v4, 0x28

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 264
    new-instance v0, Lcom/android/contacts/model/FallbackSource$ImActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/FallbackSource$ImActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 265
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v9}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 268
    :cond_0
    if-lt p2, v7, :cond_1

    .line 269
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 270
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v0, "data5"

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    .line 273
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    .line 274
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/FallbackSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/FallbackSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v8}, Lcom/android/contacts/model/FallbackSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    const-string v2, "data6"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/ContactsSource$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 286
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data1"

    const/16 v2, 0x21

    invoke-direct {v1, v9, v8, v2}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_1
    return-object v6
.end method

.method protected inflateNickname(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 8
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const v2, 0x7f0b00ad

    const/4 v5, 0x1

    const-string v1, "vnd.android.cursor.item/nickname"

    const-string v7, "data1"

    .line 154
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 155
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 156
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v3, "vnd.android.cursor.item/nickname"

    const v3, 0x7f0200ed

    const/4 v4, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 158
    iput-boolean v5, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->headless:Z

    .line 159
    iput v5, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    .line 160
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 161
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v7}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 164
    :cond_0
    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    .line 165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 166
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 169
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const/16 v3, 0x2061

    invoke-direct {v1, v7, v2, v3}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/ContactsSource$EditField;->setInline(Z)Lcom/android/contacts/model/ContactsSource$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    return-object v6
.end method

.method protected inflateNote(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 8
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v5, 0x1

    const v2, 0x7f0b0036

    const-string v1, "vnd.android.cursor.item/note"

    const-string v7, "data1"

    .line 353
    const-string v0, "vnd.android.cursor.item/note"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 354
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 355
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v3, "vnd.android.cursor.item/note"

    const v3, 0x7f0200f0

    const/16 v4, 0x2d

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 357
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 358
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v7}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 359
    iput v5, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    .line 362
    :cond_0
    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    .line 363
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 364
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const v3, 0x24001

    invoke-direct {v1, v7, v2, v3}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_1
    return-object v6
.end method

.method protected inflateOrganization(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 10
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/16 v8, 0x2001

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    const-string v9, "data1"

    .line 293
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 294
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 295
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v1, "vnd.android.cursor.item/organization"

    const v2, 0x7f0b00ae

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 297
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v9}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 298
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    const-string v1, "data4"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 299
    iput v5, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    .line 300
    iput-boolean v7, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->isList:Z

    .line 303
    :cond_0
    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    .line 304
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    .line 306
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/FallbackSource;->buildOrgType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildOrgType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/FallbackSource;->buildOrgType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/ContactsSource$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 312
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data1"

    const v2, 0x7f0b0038

    invoke-direct {v1, v9, v2, v8}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b0039

    invoke-direct {v1, v2, v3, v8}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_1
    return-object v6
.end method

.method protected inflatePhone(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 9
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x3

    const-string v1, "vnd.android.cursor.item/phone_v2"

    const-string v8, "data1"

    .line 177
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 178
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 179
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    const v2, 0x7f0b003b

    const v3, 0x7f0200eb

    const/16 v4, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 181
    const v0, 0x7f02002d

    iput v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->iconAltRes:I

    .line 182
    new-instance v0, Lcom/android/contacts/model/FallbackSource$PhoneActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/FallbackSource$PhoneActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 183
    new-instance v0, Lcom/android/contacts/model/FallbackSource$PhoneActionAltInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/FallbackSource$PhoneActionAltInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionAltHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 184
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v8}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 187
    :cond_0
    if-lt p2, v7, :cond_1

    .line 188
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    .line 190
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/FallbackSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/FallbackSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 195
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data1"

    const/4 v2, -0x1

    invoke-direct {v1, v8, v2, v7}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_1
    return-object v6
.end method

.method protected inflatePhoto(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 7
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const-string v1, "vnd.android.cursor.item/photo"

    .line 338
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 339
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 340
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v3, "vnd.android.cursor.item/photo"

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 341
    iput v5, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    .line 344
    :cond_0
    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    .line 345
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 346
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data15"

    invoke-direct {v1, v3, v2, v2}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_1
    return-object v6
.end method

.method protected inflateSipAddress(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 8
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v5, 0x1

    const v2, 0x7f0b0037

    const-string v1, "vnd.android.cursor.item/sip_address"

    const-string v7, "data1"

    .line 422
    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 423
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 433
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v3, "vnd.android.cursor.item/sip_address"

    const v3, 0x7f0200f5

    const/16 v4, 0xf

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 436
    iput-boolean v5, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->secondary:Z

    .line 437
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 438
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v7}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 441
    :cond_0
    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    .line 442
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 443
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const/16 v3, 0x21

    invoke-direct {v1, v7, v2, v3}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_1
    return-object v6
.end method

.method protected inflateStructuredName(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 7
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v3, -0x1

    const-string v1, "vnd.android.cursor.item/name"

    .line 138
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 139
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 140
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v2, "vnd.android.cursor.item/name"

    const v2, 0x7f0b00ac

    const/4 v5, 0x1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 144
    :cond_0
    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    .line 145
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 146
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data1"

    const v3, 0x7f0b011a

    const/16 v4, 0x2061

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1
    return-object v6
.end method

.method protected inflateStructuredPostal(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 9
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x2071

    const/4 v5, 0x1

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    .line 225
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 226
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 227
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    const v2, 0x7f0b003e

    const v3, 0x7f0200ea

    const/16 v4, 0x14

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 229
    new-instance v0, Lcom/android/contacts/model/FallbackSource$PostalActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/FallbackSource$PostalActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 230
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 233
    :cond_0
    if-lt p2, v8, :cond_1

    .line 234
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    .line 236
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/FallbackSource;->buildPostalType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildPostalType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v8}, Lcom/android/contacts/model/FallbackSource;->buildPostalType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->buildPostalType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/ContactsSource$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 244
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data8"

    const v3, 0x7f0b00f3

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data7"

    const v3, 0x7f0b00f2

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data4"

    const v3, 0x7f0b00f1

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data9"

    const v3, 0x7f0b00f4

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/ContactsSource$EditField;->setInline(Z)Lcom/android/contacts/model/ContactsSource$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v2, "data10"

    const v3, 0x7f0b00f5

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/ContactsSource$EditField;->setInline(Z)Lcom/android/contacts/model/ContactsSource$EditField;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_1
    return-object v6
.end method

.method protected inflateWebsite(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 8
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const v2, 0x7f0b00af

    const-string v1, "vnd.android.cursor.item/website"

    const-string v7, "data1"

    .line 371
    const-string v0, "vnd.android.cursor.item/website"

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/FallbackSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 372
    .local v6, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-nez v6, :cond_0

    .line 373
    new-instance v0, Lcom/android/contacts/model/ContactsSource$DataKind;

    const-string v3, "vnd.android.cursor.item/website"

    const v3, 0x7f0200f8

    const/16 v4, 0x23

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/ContactsSource$DataKind;-><init>(Ljava/lang/String;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/FallbackSource;->addKind(Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v6

    .line 375
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    invoke-direct {v0, v2}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(I)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionHeader:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 376
    new-instance v0, Lcom/android/contacts/model/FallbackSource$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v7}, Lcom/android/contacts/model/FallbackSource$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->actionBody:Lcom/android/contacts/model/ContactsSource$StringInflater;

    .line 379
    :cond_0
    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    .line 380
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 381
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 384
    iget-object v0, v6, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const/16 v3, 0x11

    invoke-direct {v1, v7, v2, v3}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_1
    return-object v6
.end method
