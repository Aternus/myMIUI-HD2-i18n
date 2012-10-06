.class public Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;
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
    name = "PhotoData"
.end annotation


# instance fields
.field private final mBytes:[B

.field private final mFormat:Ljava/lang/String;

.field private mHashCode:Ljava/lang/Integer;

.field private final mIsPrimary:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[BZ)V
    .locals 1
    .parameter "format"
    .parameter "photoBytes"
    .parameter "isPrimary"

    .prologue
    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    .line 990
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    .line 991
    iput-object p2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mBytes:[B

    .line 992
    iput-boolean p3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    .line 993
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
    .line 998
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1000
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1001
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1002
    const-string v1, "data15"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1003
    iget-boolean v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    if-eqz v1, :cond_0

    .line 1004
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1006
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1016
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 1023
    :goto_0
    return v2

    .line 1019
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;

    if-nez v2, :cond_1

    move v2, v4

    .line 1020
    goto :goto_0

    .line 1022
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;

    move-object v1, v0

    .line 1023
    .local v1, photoData:Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mBytes:[B

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mBytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    iget-boolean v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

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
    .line 1055
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 1030
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 1031
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1044
    :goto_0
    return v5

    .line 1034
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    move v2, v5

    .line 1035
    .local v2, hash:I
    :goto_1
    mul-int/lit8 v2, v2, 0x1f

    .line 1036
    iget-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mBytes:[B

    if-eqz v5, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mBytes:[B

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_2

    aget-byte v1, v0, v3

    .line 1038
    .local v1, b:B
    add-int/2addr v2, v1

    .line 1037
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1034
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #hash:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    const/4 v5, 0x0

    move v2, v5

    goto :goto_1

    .line 1042
    .restart local v2       #hash:I
    :cond_2
    mul-int/lit8 v5, v2, 0x1f

    iget-boolean v6, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    if-eqz v6, :cond_3

    const/16 v6, 0x4cf

    :goto_3
    add-int v2, v5, v6

    .line 1043
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    move v5, v2

    .line 1044
    goto :goto_0

    .line 1042
    :cond_3
    const/16 v6, 0x4d5

    goto :goto_3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mBytes:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1049
    const-string v0, "format: %s: size: %d, isPrimary: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mBytes:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
