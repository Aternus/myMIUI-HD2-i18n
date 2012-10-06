.class public Lcom/android/contacts/model/ExchangeSource;
.super Lcom/android/contacts/model/FallbackSource;
.source "ExchangeSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "resPackageName"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/contacts/model/FallbackSource;-><init>()V

    .line 42
    const-string v0, "com.android.exchange"

    iput-object v0, p0, Lcom/android/contacts/model/ContactsSource;->accountType:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/ContactsSource;->resPackageName:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/contacts/model/ContactsSource;->summaryResPackageName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected inflate(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExchangeSource;->inflateStructuredName(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExchangeSource;->inflateNickname(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExchangeSource;->inflatePhone(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExchangeSource;->inflateEmail(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExchangeSource;->inflateStructuredPostal(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExchangeSource;->inflateIm(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExchangeSource;->inflateGroup(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExchangeSource;->inflateOrganization(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExchangeSource;->inflatePhoto(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExchangeSource;->inflateNote(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/ExchangeSource;->inflateWebsite(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 63
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/ExchangeSource;->setInflatedLevel(I)V

    .line 64
    return-void
.end method

.method protected inflateEmail(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 6
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v2, 0x3

    .line 115
    const/4 v1, 0x2

    invoke-super {p0, p1, v1}, Lcom/android/contacts/model/FallbackSource;->inflateEmail(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 117
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-lt p2, v2, :cond_0

    .line 118
    iput v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    .line 120
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 121
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b003c

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    return-object v0
.end method

.method protected inflateIm(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 7
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 171
    invoke-super {p0, p1, v6}, Lcom/android/contacts/model/FallbackSource;->inflateIm(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 173
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-lt p2, v4, :cond_0

    .line 174
    iput v4, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    .line 179
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 180
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v2, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string v1, "data5"

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    .line 184
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/ExchangeSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v6}, Lcom/android/contacts/model/ExchangeSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/ExchangeSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildImType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    const-string v3, "data6"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 196
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b003d

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    return-object v0
.end method

.method protected inflateNickname(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 6
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    .line 68
    const/4 v1, 0x2

    invoke-super {p0, p1, v1}, Lcom/android/contacts/model/FallbackSource;->inflateNickname(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 70
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    const/4 v1, 0x3

    if-lt p2, v1, :cond_0

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->isList:Z

    .line 73
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 74
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b00ad

    const/16 v5, 0x2061

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-object v0
.end method

.method protected inflateNote(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 6
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    .line 241
    const/4 v1, 0x2

    invoke-super {p0, p1, v1}, Lcom/android/contacts/model/FallbackSource;->inflateNote(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 243
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    const/4 v1, 0x3

    if-lt p2, v1, :cond_0

    .line 244
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 245
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b0036

    const v5, 0x24001

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_0
    return-object v0
.end method

.method protected inflateOrganization(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 7
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/16 v6, 0x2001

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 204
    invoke-super {p0, p1, v5}, Lcom/android/contacts/model/FallbackSource;->inflateOrganization(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 206
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    const/4 v1, 0x3

    if-lt p2, v1, :cond_0

    .line 207
    iput-boolean v4, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->isList:Z

    .line 208
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    .line 209
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    .line 210
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/ExchangeSource;->buildOrgType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/ExchangeSource;->buildOrgType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/ExchangeSource;->buildOrgType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 216
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b0038

    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data4"

    const v4, 0x7f0b0039

    invoke-direct {v2, v3, v4, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_0
    return-object v0
.end method

.method protected inflatePhone(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 6
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 83
    invoke-super {p0, p1, v4}, Lcom/android/contacts/model/FallbackSource;->inflatePhone(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 85
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-lt p2, v5, :cond_0

    .line 86
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    .line 88
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/ExchangeSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/ExchangeSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/ExchangeSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ExchangeSource;->buildPhoneType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSecondary(Z)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/ContactsSource$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 107
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b003b

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    return-object v0
.end method

.method protected inflatePhoto(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 5
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const/4 v4, -0x1

    .line 227
    const/4 v1, 0x2

    invoke-super {p0, p1, v1}, Lcom/android/contacts/model/FallbackSource;->inflatePhoto(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 229
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    const/4 v1, 0x3

    if-lt p2, v1, :cond_0

    .line 230
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    .line 232
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 233
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data15"

    invoke-direct {v2, v3, v4, v4}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    return-object v0
.end method

.method protected inflateStructuredPostal(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 9
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    const v8, 0x7f0b00f1

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x2071

    .line 129
    invoke-super {p0, p1, v4}, Lcom/android/contacts/model/FallbackSource;->inflateStructuredPostal(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 131
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-lt p2, v5, :cond_0

    .line 132
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 134
    .local v1, useJapaneseOrder:Z
    const-string v2, "data2"

    iput-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    .line 136
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/ExchangeSource;->buildPostalType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/ExchangeSource;->buildPostalType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/ExchangeSource;->buildPostalType(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/ContactsSource$EditType;->setSpecificMax(I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 141
    if-eqz v1, :cond_1

    .line 142
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v4, "data10"

    const v5, 0x7f0b00f5

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/ContactsSource$EditField;->setOptional(Z)Lcom/android/contacts/model/ContactsSource$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v4, "data9"

    const v5, 0x7f0b00f4

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v4, "data8"

    const v5, 0x7f0b00f3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v4, "data7"

    const v5, 0x7f0b00f2

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v4, "data4"

    invoke-direct {v3, v4, v8, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v1           #useJapaneseOrder:Z
    :cond_0
    :goto_0
    return-object v0

    .line 153
    .restart local v1       #useJapaneseOrder:Z
    :cond_1
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v4, "data4"

    invoke-direct {v3, v4, v8, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v4, "data7"

    const v5, 0x7f0b00f2

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v4, "data8"

    const v5, 0x7f0b00f3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v4, "data9"

    const v5, 0x7f0b00f4

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v2, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v3, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v4, "data10"

    const v5, 0x7f0b00f5

    invoke-direct {v3, v4, v5, v6}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/ContactsSource$EditField;->setOptional(Z)Lcom/android/contacts/model/ContactsSource$EditField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected inflateWebsite(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;
    .locals 6
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    .line 253
    const/4 v1, 0x2

    invoke-super {p0, p1, v1}, Lcom/android/contacts/model/FallbackSource;->inflateWebsite(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 255
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    const/4 v1, 0x3

    if-lt p2, v1, :cond_0

    .line 256
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->isList:Z

    .line 258
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    .line 259
    iget-object v1, v0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/ContactsSource$EditField;

    const-string v3, "data1"

    const v4, 0x7f0b00af

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/ContactsSource$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    return-object v0
.end method
