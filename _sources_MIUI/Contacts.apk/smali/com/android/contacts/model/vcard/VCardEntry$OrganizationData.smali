.class public Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/contacts/model/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrganizationData"
.end annotation


# instance fields
.field private mDepartmentName:Ljava/lang/String;

.field private mIsPrimary:Z

.field private mOrganizationName:Ljava/lang/String;

.field private final mPhoneticName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .parameter "organizationName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "phoneticName"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput p5, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mType:I

    .line 750
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    .line 751
    iput-object p2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    .line 752
    iput-object p3, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    .line 753
    iput-object p4, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    .line 754
    iput-boolean p6, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    .line 755
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 735
    iput-boolean p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 785
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 786
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 787
    const-string v1, "data2"

    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 788
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 789
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 792
    const-string v1, "data5"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 794
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 795
    const-string v1, "data4"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 797
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 798
    const-string v1, "data8"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 800
    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-eqz v1, :cond_4

    .line 801
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 803
    :cond_4
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 814
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 821
    :goto_0
    return v2

    .line 817
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;

    if-nez v2, :cond_1

    move v2, v4

    .line 818
    goto :goto_0

    .line 820
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;

    move-object v1, v0

    .line 821
    .local v1, organization:Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;
    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mType:I

    iget v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    iget-boolean v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 847
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getFormattedString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, ", "

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 764
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 765
    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 771
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 772
    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 830
    iget v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mType:I

    .line 831
    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 832
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 833
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 834
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x4cf

    :goto_3
    add-int v0, v1, v2

    .line 835
    return v0

    :cond_0
    move v2, v3

    .line 831
    goto :goto_0

    :cond_1
    move v2, v3

    .line 832
    goto :goto_1

    :cond_2
    move v2, v3

    .line 833
    goto :goto_2

    .line 834
    :cond_3
    const/16 v2, 0x4d5

    goto :goto_3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 840
    const-string v0, "type: %d, organization: %s, department: %s, title: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
