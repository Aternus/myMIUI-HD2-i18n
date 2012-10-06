.class public Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;
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
    name = "AndroidCustomData"
.end annotation


# instance fields
.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "mimeType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1443
    .local p2, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    iput-object p1, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    .line 1445
    iput-object p2, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    .line 1446
    return-void
.end method

.method public static constructAndroidCustomData(Ljava/util/List;)Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 1452
    if-nez p0, :cond_0

    .line 1453
    const/4 v2, 0x0

    .line 1454
    .local v2, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1465
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v3, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;

    invoke-direct {v3, v2, v0}, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v3

    .line 1455
    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1456
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1457
    .restart local v2       #mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1459
    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v6, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    .line 1461
    .local v1, max:I
    :goto_1
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1462
    .restart local v2       #mimeType:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {p0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #max:I
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_2
    move v1, v6

    .line 1459
    goto :goto_1
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 5
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
    .line 1471
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1473
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1474
    const-string v3, "mimetype"

    iget-object v4, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1475
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1476
    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1477
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1475
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1482
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1492
    if-ne p0, p1, :cond_0

    move v4, v7

    .line 1514
    :goto_0
    return v4

    .line 1495
    :cond_0
    instance-of v4, p1, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;

    if-nez v4, :cond_1

    move v4, v6

    .line 1496
    goto :goto_0

    .line 1498
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;

    move-object v1, v0

    .line 1499
    .local v1, data:Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;
    iget-object v4, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    .line 1500
    goto :goto_0

    .line 1502
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v4, :cond_4

    .line 1503
    iget-object v4, v1, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v4, :cond_3

    move v4, v7

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_0

    .line 1505
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1506
    .local v3, size:I
    iget-object v4, v1, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    move v4, v6

    .line 1507
    goto :goto_0

    .line 1509
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_7

    .line 1510
    iget-object v4, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v6

    .line 1511
    goto :goto_0

    .line 1509
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move v4, v7

    .line 1514
    goto :goto_0
.end method

.method public getEntryLabel()Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1539
    sget-object v0, Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/contacts/model/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1520
    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    move v1, v3

    .line 1521
    .local v1, hash:I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1522
    iget-object v3, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1523
    .local v0, data:Ljava/lang/String;
    mul-int/lit8 v3, v1, 0x1f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_2
    add-int v1, v3, v4

    goto :goto_1

    .end local v0           #data:Ljava/lang/String;
    .end local v1           #hash:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    move v1, v5

    .line 1520
    goto :goto_0

    .restart local v0       #data:Ljava/lang/String;
    .restart local v1       #hash:I
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    move v4, v5

    .line 1523
    goto :goto_2

    .line 1526
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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
    .locals 3

    .prologue
    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1532
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-custom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1533
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
