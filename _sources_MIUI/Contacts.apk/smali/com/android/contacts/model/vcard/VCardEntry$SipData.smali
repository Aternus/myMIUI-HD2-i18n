.class public Lcom/android/contacts/model/vcard/VCardEntry$SipData;
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
    name = "SipData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .parameter "rawSip"
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    const-string v0, "sip:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    .line 1364
    :goto_0
    iput p2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mType:I

    .line 1365
    iput-object p3, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    .line 1366
    iput-boolean p4, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mIsPrimary:Z

    .line 1367
    return-void

    .line 1362
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    goto :goto_0
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
    .line 1372
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1374
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1375
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1376
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1377
    const-string v1, "data2"

    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1378
    iget v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mType:I

    if-nez v1, :cond_0

    .line 1379
    const-string v1, "data3"

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1381
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eqz v1, :cond_1

    .line 1382
    const-string v1, "is_primary"

    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mIsPrimary:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1384
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1385
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1394
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 1401
    :goto_0
    return v2

    .line 1397
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/model/vcard/VCardEntry$SipData;

    if-nez v2, :cond_1

    move v2, v4

    .line 1398
    goto :goto_0

    .line 1400
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;

    move-object v1, v0

    .line 1401
    .local v1, sipData:Lcom/android/contacts/model/vcard/VCardEntry$SipData;
    iget v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mType:I

    iget v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mIsPrimary:Z

    iget-boolean v3, v1, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public getEntryLabel()Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1423
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1409
    iget v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mType:I

    .line 1410
    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 1411
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 1412
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    :goto_2
    add-int v0, v1, v2

    .line 1413
    return v0

    :cond_0
    move v2, v3

    .line 1410
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1411
    goto :goto_1

    .line 1412
    :cond_2
    const/16 v2, 0x4d5

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
