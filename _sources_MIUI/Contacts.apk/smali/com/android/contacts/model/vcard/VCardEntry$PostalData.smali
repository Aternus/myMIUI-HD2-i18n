.class public Lcom/android/contacts/model/vcard/VCardEntry$PostalData;
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
    name = "PostalData"
.end annotation


# instance fields
.field private final mCountry:Ljava/lang/String;

.field private final mExtendedAddress:Ljava/lang/String;

.field private mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mLocalty:Ljava/lang/String;

.field private final mPobox:Ljava/lang/String;

.field private final mPostalCode:Ljava/lang/String;

.field private final mRegion:Ljava/lang/String;

.field private final mStreet:Ljava/lang/String;

.field private final mType:I

.field private mVCardType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0
    .parameter "pobox"
    .parameter "extendedAddress"
    .parameter "street"
    .parameter "localty"
    .parameter "region"
    .parameter "postalCode"
    .parameter "country"
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"
    .parameter "vcardType"

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput p8, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mType:I

    .line 513
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    .line 514
    iput-object p2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .line 515
    iput-object p3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .line 516
    iput-object p4, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    .line 517
    iput-object p5, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    .line 518
    iput-object p6, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    .line 519
    iput-object p7, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    .line 520
    iput-object p9, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    .line 521
    iput-boolean p10, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    .line 522
    iput p11, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mVCardType:I

    .line 523
    return-void
.end method

.method public static constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/contacts/model/vcard/VCardEntry$PostalData;
    .locals 12
    .parameter
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"
    .parameter "vcardType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/android/contacts/model/vcard/VCardEntry$PostalData;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x7

    new-array v7, v0, [Ljava/lang/String;

    .line 532
    .local v7, dataArray:[Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 533
    .local v0, size:I
    const/4 v1, 0x7

    if-le v0, v1, :cond_3

    .line 534
    const/4 v0, 0x7

    move v2, v0

    .line 542
    .end local v0           #size:I
    .local v2, size:I
    :goto_0
    const/4 v0, 0x0

    .line 543
    .local v0, i:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0           #propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 544
    .local p0, addressElement:Ljava/lang/String;
    aput-object p0, v7, v0

    .line 545
    add-int/lit8 p0, v0, 0x1

    .end local v0           #i:I
    .local p0, i:I
    if-lt p0, v2, :cond_1

    move v0, p0

    .line 549
    .end local v1           #i$:Ljava/util/Iterator;
    .end local p0           #i:I
    .restart local v0       #i:I
    :cond_0
    :goto_2
    const/4 p0, 0x7

    if-ge v0, p0, :cond_2

    .line 550
    add-int/lit8 p0, v0, 0x1

    .end local v0           #i:I
    .restart local p0       #i:I
    const/4 v1, 0x0

    aput-object v1, v7, v0

    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    goto :goto_2

    .end local v0           #i:I
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local p0       #i:I
    :cond_1
    move v0, p0

    .line 546
    .end local p0           #i:I
    .restart local v0       #i:I
    goto :goto_1

    .line 553
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;

    .end local v0           #i:I
    const/4 p0, 0x0

    aget-object v1, v7, p0

    const/4 p0, 0x1

    aget-object v2, v7, p0

    .end local v2           #size:I
    const/4 p0, 0x2

    aget-object v3, v7, p0

    const/4 p0, 0x3

    aget-object v4, v7, p0

    const/4 p0, 0x4

    aget-object v5, v7, p0

    const/4 p0, 0x5

    aget-object v6, v7, p0

    const/4 p0, 0x6

    aget-object v7, v7, p0

    .end local v7           #dataArray:[Ljava/lang/String;
    move v8, p1

    move-object v9, p2

    move v10, p3

    move/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-object v0

    .local v0, size:I
    .restart local v7       #dataArray:[Ljava/lang/String;
    .local p0, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move v2, v0

    .end local v0           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 4
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
    .line 560
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 562
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 563
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 565
    const-string v2, "data2"

    iget v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 566
    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mType:I

    if-nez v2, :cond_0

    .line 567
    const-string v2, "data3"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 571
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 572
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 573
    const/4 v1, 0x0

    .line 584
    .local v1, streetString:Ljava/lang/String;
    :goto_0
    const-string v2, "data5"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 585
    const-string v2, "data4"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 586
    const-string v2, "data7"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 587
    const-string v2, "data8"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 588
    const-string v2, "data9"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 589
    const-string v2, "data10"

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 591
    const-string v2, "data1"

    iget v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mVCardType:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 592
    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-eqz v2, :cond_1

    .line 593
    const-string v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 595
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    return-void

    .line 575
    .end local v1           #streetString:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .restart local v1       #streetString:Ljava/lang/String;
    goto :goto_0

    .line 578
    .end local v1           #streetString:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 579
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .restart local v1       #streetString:Ljava/lang/String;
    goto :goto_0

    .line 581
    .end local v1           #streetString:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #streetString:Ljava/lang/String;
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 647
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 654
    :goto_0
    return v2

    .line 650
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;

    if-nez v2, :cond_1

    move v2, v4

    .line 651
    goto :goto_0

    .line 653
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;

    move-object v1, v0

    .line 654
    .local v1, postalData:Lcom/android/contacts/model/vcard/VCardEntry$PostalData;
    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mType:I

    iget v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mType:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    iget-boolean v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 691
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getFormattedAddress(I)Ljava/lang/String;
    .locals 9
    .parameter "vcardType"

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x7

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 601
    .local v3, empty:Z
    new-array v2, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    aput-object v6, v2, v5

    .line 604
    .local v2, dataArray:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/contacts/model/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 606
    const/4 v4, 0x6

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_5

    .line 607
    aget-object v0, v2, v4

    .line 608
    .local v0, addressPart:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 609
    if-nez v3, :cond_1

    .line 610
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 612
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 618
    .end local v0           #addressPart:Ljava/lang/String;
    .end local v4           #i:I
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, v7, :cond_5

    .line 619
    aget-object v0, v2, v4

    .line 620
    .restart local v0       #addressPart:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 621
    if-nez v3, :cond_4

    .line 622
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 624
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 631
    .end local v0           #addressPart:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 669
    iget v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mType:I

    .line 670
    .local v1, hash:I
    mul-int/lit8 v6, v1, 0x1f

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    :goto_0
    add-int v1, v6, v7

    .line 671
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-eqz v7, :cond_1

    const/16 v7, 0x4cf

    :goto_1
    add-int v1, v6, v7

    .line 673
    const/4 v6, 0x7

    new-array v3, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v6, v3, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    aput-object v7, v3, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    aput-object v7, v3, v6

    .line 675
    .local v3, hashTargets:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 676
    .local v2, hashTarget:Ljava/lang/String;
    mul-int/lit8 v6, v1, 0x1f

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    :goto_3
    add-int v1, v6, v7

    .line 675
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #hashTarget:Ljava/lang/String;
    .end local v3           #hashTargets:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    move v7, v8

    .line 670
    goto :goto_0

    .line 671
    :cond_1
    const/16 v7, 0x4d5

    goto :goto_1

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #hashTarget:Ljava/lang/String;
    .restart local v3       #hashTargets:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2
    move v7, v8

    .line 676
    goto :goto_3

    .line 678
    .end local v2           #hashTarget:Ljava/lang/String;
    :cond_3
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

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
    .line 683
    const-string v0, "type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
