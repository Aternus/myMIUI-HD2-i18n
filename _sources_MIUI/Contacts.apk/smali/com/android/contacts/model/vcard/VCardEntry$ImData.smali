.class public Lcom/android/contacts/model/vcard/VCardEntry$ImData;
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
    name = "ImData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mCustomProtocol:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mProtocol:I

.field private final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "address"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 884
    iput p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mProtocol:I

    .line 885
    iput-object p2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    .line 886
    iput p4, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mType:I

    .line 887
    iput-object p3, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    .line 888
    iput-boolean p5, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mIsPrimary:Z

    .line 889
    return-void
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
    .line 894
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 896
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 897
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 898
    const-string v1, "data2"

    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 899
    const-string v1, "data5"

    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 900
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 901
    iget v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mProtocol:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 902
    const-string v1, "data6"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 904
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-eqz v1, :cond_1

    .line 905
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 907
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 917
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 924
    :goto_0
    return v2

    .line 920
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/model/vcard/VCardEntry$ImData;

    if-nez v2, :cond_1

    move v2, v4

    .line 921
    goto :goto_0

    .line 923
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;

    move-object v1, v0

    .line 924
    .local v1, imData:Lcom/android/contacts/model/vcard/VCardEntry$ImData;
    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mType:I

    iget v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mProtocol:I

    iget v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mProtocol:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mIsPrimary:Z

    iget-boolean v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mIsPrimary:Z

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
    .line 950
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 933
    iget v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mType:I

    .line 934
    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mProtocol:I

    add-int v0, v1, v2

    .line 935
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 936
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 937
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    :goto_2
    add-int v0, v1, v2

    .line 938
    return v0

    :cond_0
    move v2, v3

    .line 935
    goto :goto_0

    :cond_1
    move v2, v3

    .line 936
    goto :goto_1

    .line 937
    :cond_2
    const/16 v2, 0x4d5

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 943
    const-string v0, "type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mProtocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$ImData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
