.class public Lcom/android/contacts/model/EntityModifier;
.super Ljava/lang/Object;
.source "EntityModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Z
    .locals 7
    .parameter "state"
    .parameter "kind"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    if-nez p1, :cond_0

    move v3, v5

    .line 79
    :goto_0
    return v3

    .line 75
    :cond_0
    iget-object v3, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 76
    .local v2, visibleCount:I
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->hasValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Z

    move-result v1

    .line 77
    .local v1, validTypes:Z
    iget v3, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    if-ge v2, v3, :cond_2

    :cond_1
    move v0, v6

    .line 79
    .local v0, validOverall:Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    move v3, v6

    goto :goto_0

    .end local v0           #validOverall:Z
    :cond_2
    move v0, v5

    .line 77
    goto :goto_1

    .restart local v0       #validOverall:Z
    :cond_3
    move v3, v5

    .line 79
    goto :goto_0
.end method

.method public static canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)Z
    .locals 2
    .parameter "state"
    .parameter "source"
    .parameter "mimeType"

    .prologue
    .line 83
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 84
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    invoke-static {p0, v0}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Z

    move-result v1

    return v1
.end method

.method public static ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "source"
    .parameter "mimeType"

    .prologue
    const/4 v5, 0x1

    .line 100
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v2

    .line 101
    .local v2, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    invoke-virtual {p0, p2, v5}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_1

    move v1, v5

    .line 104
    .local v1, hasChild:Z
    :goto_0
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 105
    invoke-static {p0, v2}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 113
    :cond_0
    :goto_1
    return-void

    .line 101
    .end local v1           #hasChild:Z
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 106
    .restart local v1       #hasChild:Z
    :cond_2
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 108
    invoke-static {p0, v2}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    .line 109
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iget-object v3, v2, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    goto :goto_1
.end method

.method private static equals(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 5
    .parameter "kind"
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 634
    iget-object v4, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/ContactsSource$EditField;

    .line 635
    .local v2, field:Lcom/android/contacts/model/ContactsSource$EditField;
    iget-object v4, v2, Lcom/android/contacts/model/ContactsSource$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, f1:Ljava/lang/String;
    iget-object v4, v2, Lcom/android/contacts/model/ContactsSource$EditField;->column:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, f2:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/model/EntityModifier;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 638
    const/4 v4, 0x0

    .line 642
    .end local v0           #f1:Ljava/lang/String;
    .end local v1           #f2:Ljava/lang/String;
    .end local v2           #field:Lcom/android/contacts/model/ContactsSource$EditField;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 622
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 623
    const/4 v0, 0x1

    .line 630
    :goto_0
    return v0

    .line 626
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 627
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 630
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fixupLegacyImType(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const-string v3, "im_protocol"

    .line 560
    const-string v2, "im_protocol"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, encodedString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 564
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 566
    .local v1, protocol:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 567
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/Integer;

    .end local v1           #protocol:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 571
    :catch_0
    move-exception v2

    goto :goto_0

    .line 569
    .restart local v1       #protocol:Ljava/lang/Object;
    :cond_1
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/String;

    .end local v1           #protocol:Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;ZI)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 8
    .parameter "state"
    .parameter "kind"
    .parameter "includeSecondary"
    .parameter "exactValue"

    .prologue
    const/4 v7, 0x0

    .line 285
    iget-object v6, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    if-nez v6, :cond_0

    move-object v6, v7

    .line 317
    .end local p0
    :goto_0
    return-object v6

    .line 288
    .restart local p0
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 289
    .local v4, typeCount:Landroid/util/SparseIntArray;
    invoke-static {p0, p1, v7, p2, v4}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 291
    .local v5, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/ContactsSource$EditType;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v7

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/ContactsSource$EditType;

    .line 297
    .local v2, lastType:Lcom/android/contacts/model/ContactsSource$EditType;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 298
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/model/ContactsSource$EditType;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/ContactsSource$EditType;

    .line 300
    .local v3, type:Lcom/android/contacts/model/ContactsSource$EditType;
    iget v6, v3, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 302
    .local v0, count:I
    iget v6, v3, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    if-ne p3, v6, :cond_3

    move-object v6, v3

    .line 304
    goto :goto_0

    .line 307
    :cond_3
    if-lez v0, :cond_2

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 314
    .end local v0           #count:I
    .end local v3           #type:Lcom/android/contacts/model/ContactsSource$EditType;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 315
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/ContactsSource$EditType;

    move-object v6, p0

    goto :goto_0

    .restart local p0
    :cond_5
    move-object v6, v2

    .line 317
    goto :goto_0
.end method

.method public static getCurrentType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 2
    .parameter "entry"
    .parameter "kind"

    .prologue
    .line 223
    iget-object v1, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 224
    .local v0, rawValue:Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 225
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/model/EntityModifier;->getType(Lcom/android/contacts/model/ContactsSource$DataKind;I)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v1

    goto :goto_0
.end method

.method public static getType(Lcom/android/contacts/model/ContactsSource$DataKind;I)Lcom/android/contacts/model/ContactsSource$EditType;
    .locals 3
    .parameter "kind"
    .parameter "rawValue"

    .prologue
    .line 255
    iget-object v2, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/ContactsSource$EditType;

    .line 256
    .local v1, type:Lcom/android/contacts/model/ContactsSource$EditType;
    iget v2, v1, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 260
    .end local v1           #type:Lcom/android/contacts/model/ContactsSource$EditType;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Landroid/util/SparseIntArray;
    .locals 9
    .parameter "state"
    .parameter "kind"

    .prologue
    .line 187
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 190
    .local v6, typeCount:Landroid/util/SparseIntArray;
    iget-object v7, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 191
    .local v3, mimeEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v3, :cond_0

    .line 206
    :goto_0
    return-object v6

    .line 193
    :cond_0
    const/4 v4, 0x0

    .line 194
    .local v4, totalCount:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 196
    .local v1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 197
    add-int/lit8 v4, v4, 0x1

    .line 199
    invoke-static {v1, p1}, Lcom/android/contacts/model/EntityModifier;->getCurrentType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v5

    .line 200
    .local v5, type:Lcom/android/contacts/model/ContactsSource$EditType;
    if-eqz v5, :cond_1

    .line 201
    iget v7, v5, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 202
    .local v0, count:I
    iget v7, v5, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 205
    .end local v0           #count:I
    .end local v1           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v5           #type:Lcom/android/contacts/model/ContactsSource$EditType;
    :cond_2
    const/high16 v7, -0x8000

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Ljava/util/ArrayList;
    .locals 2
    .parameter "state"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/ContactsSource$DataKind;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/ContactsSource$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditType;)Ljava/util/ArrayList;
    .locals 2
    .parameter "state"
    .parameter "kind"
    .parameter "forceInclude"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/ContactsSource$DataKind;",
            "Lcom/android/contacts/model/ContactsSource$EditType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/ContactsSource$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;
    .locals 10
    .parameter "state"
    .parameter "kind"
    .parameter "forceInclude"
    .parameter "includeSecondary"
    .parameter "typeCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/ContactsSource$DataKind;",
            "Lcom/android/contacts/model/ContactsSource$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/ContactsSource$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 154
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 157
    .local v5, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/ContactsSource$EditType;>;"
    invoke-static {p1}, Lcom/android/contacts/model/EntityModifier;->hasEditTypes(Lcom/android/contacts/model/ContactsSource$DataKind;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 175
    :cond_0
    return-object v5

    .line 159
    :cond_1
    if-nez p4, :cond_2

    .line 161
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Landroid/util/SparseIntArray;

    move-result-object p4

    .line 164
    :cond_2
    iget-object v6, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/ContactsSource$EditType;

    .line 165
    .local v2, type:Lcom/android/contacts/model/ContactsSource$EditType;
    iget v6, v2, Lcom/android/contacts/model/ContactsSource$EditType;->specificMax:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    move v4, v8

    .line 167
    .local v4, validSpecific:Z
    :goto_1
    if-eqz p3, :cond_7

    move v3, v8

    .line 168
    .local v3, validSecondary:Z
    :goto_2
    invoke-virtual {v2, p2}, Lcom/android/contacts/model/ContactsSource$EditType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    .local v0, forcedInclude:Z
    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 171
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    .end local v0           #forcedInclude:Z
    .end local v3           #validSecondary:Z
    .end local v4           #validSpecific:Z
    :cond_5
    iget v6, v2, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    invoke-virtual {p4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    iget v7, v2, Lcom/android/contacts/model/ContactsSource$EditType;->specificMax:I

    if-ge v6, v7, :cond_6

    move v4, v8

    goto :goto_1

    :cond_6
    move v4, v9

    goto :goto_1

    .line 167
    .restart local v4       #validSpecific:Z
    :cond_7
    iget-boolean v6, v2, Lcom/android/contacts/model/ContactsSource$EditType;->secondary:Z

    if-nez v6, :cond_8

    move v3, v8

    goto :goto_2

    :cond_8
    move v3, v9

    goto :goto_2
.end method

.method public static hasEditTypes(Lcom/android/contacts/model/ContactsSource$DataKind;)Z
    .locals 1
    .parameter "kind"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/ContactsSource$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Z
    .locals 2
    .parameter "state"
    .parameter "kind"

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-static {p1}, Lcom/android/contacts/model/EntityModifier;->hasEditTypes(Lcom/android/contacts/model/ContactsSource$DataKind;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 91
    :goto_0
    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 91
    goto :goto_0
.end method

.method public static insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 3
    .parameter "state"
    .parameter "kind"

    .prologue
    const/high16 v2, -0x8000

    .line 338
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;ZI)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v0

    .line 339
    .local v0, bestType:Lcom/android/contacts/model/ContactsSource$EditType;
    if-nez v0, :cond_0

    .line 341
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;ZI)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object v0

    .line 343
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    return-object v1
.end method

.method public static insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .parameter "state"
    .parameter "kind"
    .parameter "type"

    .prologue
    .line 352
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 375
    :goto_0
    return-object v4

    .line 353
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 356
    .local v0, after:Landroid/content/ContentValues;
    const-string v4, "mimetype"

    iget-object v5, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v4, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v4, :cond_1

    .line 360
    iget-object v4, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->defaultValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 363
    :cond_1
    iget-object v4, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    .line 365
    iget-object v4, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->typeColumn:Ljava/lang/String;

    iget v5, p2, Lcom/android/contacts/model/ContactsSource$EditType;->rawValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 369
    .local v1, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 372
    .local v2, time:J
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/model/EntityDelta;->setLastItemCreationTime(J)V

    .line 373
    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setCreationTime(J)V

    move-object v4, v1

    .line 375
    goto :goto_0
.end method

.method public static insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 2
    .parameter "state"
    .parameter "source"
    .parameter "mimeType"

    .prologue
    .line 327
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 328
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    invoke-static {p0, v0}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    return-object v1
.end method

.method public static insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 2
    .parameter "state"
    .parameter "source"
    .parameter "mimeType"
    .parameter "type"

    .prologue
    .line 322
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 323
    .local v0, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    invoke-static {p0, v0, p3}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    return-object v1
.end method

.method public static isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Z
    .locals 6
    .parameter "values"
    .parameter "kind"

    .prologue
    const/4 v5, 0x1

    .line 443
    iget-object v4, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    if-nez v4, :cond_0

    move v4, v5

    .line 454
    :goto_0
    return v4

    .line 445
    :cond_0
    const/4 v1, 0x0

    .line 446
    .local v1, hasValues:Z
    iget-object v4, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/ContactsSource$EditField;

    .line 448
    .local v0, field:Lcom/android/contacts/model/ContactsSource$EditField;
    iget-object v4, v0, Lcom/android/contacts/model/ContactsSource$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 450
    const/4 v1, 0x1

    goto :goto_1

    .line 454
    .end local v0           #field:Lcom/android/contacts/model/ContactsSource$EditField;
    .end local v3           #value:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static link(Ljava/util/List;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)V
    .locals 8
    .parameter
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/ContactsSource$DataKind;",
            ">;",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/EntityDelta;",
            ")V"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, kinds:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/ContactsSource$DataKind;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0           #kinds:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/ContactsSource$DataKind;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 668
    .local v4, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    const-string p0, "vnd.android.cursor.item/group_membership"

    iget-object v0, v4, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 672
    iget-object p0, v4, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 673
    .local p0, fromEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    iget-object v0, v4, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 674
    .local v5, toEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0           #fromEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 680
    .local p0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p2, p0}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_1

    .line 686
    .end local v0           #i$:Ljava/util/Iterator;
    .local p0, fromEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_2
    iget v0, v4, Lcom/android/contacts/model/ContactsSource$DataKind;->valueOverallMax:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 687
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #fromEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    check-cast p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 688
    .local p0, fromEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 689
    .local v0, toEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0, p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->linkDuplicated(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 690
    const-string v2, "vnd.android.cursor.item/nickname"

    iget-object v3, v4, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 691
    const-string v2, "data1"

    invoke-static {v2, p0, v0}, Lcom/android/contacts/model/EntityModifier;->merge(Ljava/lang/String;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    goto :goto_0

    .line 692
    :cond_3
    const-string v2, "vnd.android.cursor.item/note"

    iget-object v3, v4, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    const-string v2, "data1"

    invoke-static {v2, p0, v0}, Lcom/android/contacts/model/EntityModifier;->merge(Ljava/lang/String;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    goto :goto_0

    .line 698
    .end local v0           #toEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .local p0, fromEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0           #fromEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 699
    .local v0, fromEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const/4 p0, 0x1

    .line 700
    .local p0, addNew:Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 701
    .local v6, toEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v4, v0, v6}, Lcom/android/contacts/model/EntityModifier;->equals(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 702
    invoke-virtual {v6, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->linkDuplicated(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 703
    const/4 p0, 0x0

    .line 708
    .end local v6           #toEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_7
    if-eqz p0, :cond_5

    .line 709
    invoke-virtual {p2, v0}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_2

    .line 713
    .end local v0           #fromEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    .end local v5           #toEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local p0           #addNew:Z
    :cond_8
    return-void
.end method

.method private static merge(Ljava/lang/String;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 7
    .parameter "column"
    .parameter "fromEntry"
    .parameter "toEntry"

    .prologue
    .line 646
    invoke-virtual {p1, p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, from:Ljava/lang/String;
    invoke-virtual {p2, p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, to:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 649
    .local v1, fromEmpty:Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 650
    .local v3, toEmpty:Z
    if-nez v1, :cond_1

    if-nez v3, :cond_1

    .line 651
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 652
    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p0, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    .line 655
    invoke-virtual {p2, p0, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseExtras(Landroid/content/Context;Lcom/android/contacts/model/ContactsSource;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "source"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 463
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    move-result p0

    .end local p0
    if-nez p0, :cond_1

    .line 553
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 470
    .restart local p1
    .restart local p2
    :cond_1
    const-string p0, "vnd.android.cursor.item/name"

    invoke-static {p2, p1, p0}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;Ljava/lang/String;)V

    .line 471
    const-string p0, "vnd.android.cursor.item/name"

    invoke-virtual {p2, p0}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object p0

    .line 473
    .local p0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    const-string v1, "data2"

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_2
    const-string v0, "phonetic_name"

    .end local v0           #name:Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, phoneticName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    const-string v1, "data7"

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_3
    const-string p0, "vnd.android.cursor.item/postal-address_v2"

    .end local p0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p1, p0}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v1

    .line 487
    .local v1, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    const-string v3, "postal_type"

    const-string v4, "postal"

    const-string v5, "data4"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .end local v0           #phoneticName:Ljava/lang/String;
    const-string p0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, p0}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v1

    .line 494
    const-string v3, "phone_type"

    const-string v4, "phone"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v3, "secondary_phone_type"

    const-string v4, "secondary_phone"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v3, "tertiary_phone_type"

    const-string v4, "tertiary_phone"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string p0, "vnd.android.cursor.item/sip_address"

    invoke-virtual {p1, p0}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v1

    .line 504
    const-string v3, "sip_address"

    const-string v4, "sip_address"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string p0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p1, p0}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v1

    .line 510
    const-string v3, "email_type"

    const-string v4, "email"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v3, "secondary_email_type"

    const-string v4, "secondary_email"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v3, "tertiary_email_type"

    const-string v4, "tertiary_email"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string p0, "vnd.android.cursor.item/im"

    invoke-virtual {p1, p0}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v1

    .line 520
    invoke-static {p3}, Lcom/android/contacts/model/EntityModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    .line 521
    const-string v3, "im_protocol"

    const-string v4, "im_handle"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string p0, "company"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "job_title"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_4
    const/4 p0, 0x1

    .line 527
    .local p0, hasOrg:Z
    :goto_1
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object v0

    .line 528
    .local v0, kindOrg:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-eqz p0, :cond_6

    invoke-static {p2, v0}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Z

    move-result p0

    .end local p0           #hasOrg:Z
    if-eqz p0, :cond_6

    .line 529
    invoke-static {p2, v0}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object p0

    .line 531
    .local p0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v0, "company"

    .end local v0           #kindOrg:Lcom/android/contacts/model/ContactsSource$DataKind;
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, company:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    .end local v1           #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-eqz v1, :cond_5

    .line 533
    const-string v1, "data1"

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_5
    const-string v0, "job_title"

    .end local v0           #company:Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 538
    const-string v1, "data4"

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .end local v0           #title:Ljava/lang/String;
    .end local p0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_6
    const-string p0, "notes"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    .line 544
    .local p0, hasNotes:Z
    const-string v0, "vnd.android.cursor.item/note"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/ContactsSource$DataKind;

    move-result-object p1

    .line 545
    .local p1, kindNotes:Lcom/android/contacts/model/ContactsSource$DataKind;
    if-eqz p0, :cond_0

    invoke-static {p2, p1}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Z

    move-result p0

    .end local p0           #hasNotes:Z
    if-eqz p0, :cond_0

    .line 546
    invoke-static {p2, p1}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object p0

    .line 548
    .local p0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string p1, "notes"

    .end local p1           #kindNotes:Lcom/android/contacts/model/ContactsSource$DataKind;
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 549
    .local p1, notes:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result p2

    .end local p2
    if-eqz p2, :cond_0

    .line 550
    const-string p2, "data1"

    invoke-virtual {p0, p2, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 525
    .end local p0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v1       #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    .local p1, source:Lcom/android/contacts/model/ContactsSource;
    .restart local p2
    :cond_7
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "kind"
    .parameter "extras"
    .parameter "typeExtra"
    .parameter "valueExtra"
    .parameter "valueColumn"

    .prologue
    .line 588
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 591
    .local v1, value:Ljava/lang/CharSequence;
    if-nez p1, :cond_1

    .line 619
    .end local p0
    .end local p1
    .end local p2
    .end local p4
    :cond_0
    :goto_0
    return-void

    .line 594
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p4
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Z

    move-result p4

    .line 595
    .local p4, canInsert:Z
    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 596
    .local v0, validValue:Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 599
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    .line 600
    .local p4, hasType:Z
    if-eqz p4, :cond_4

    const/4 p4, 0x0

    .line 603
    .local p4, defaultType:I
    :goto_2
    const-string v0, "vnd.android.cursor.item/phone_v2"

    .end local v0           #validValue:Z
    iget-object v2, p1, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 604
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .end local p4           #defaultType:I
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->isChinaMobileNumber(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    const/4 p4, 0x2

    .line 607
    .restart local p4       #defaultType:I
    :cond_2
    :goto_3
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p4

    .line 608
    .local p4, typeValue:I
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p4}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;ZI)Lcom/android/contacts/model/ContactsSource$EditType;

    move-result-object p4

    .line 611
    .local p4, editType:Lcom/android/contacts/model/ContactsSource$EditType;
    invoke-static {p0, p1, p4}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/ContactsSource$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object p0

    .line 612
    .local p0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p5, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    if-eqz p4, :cond_0

    iget-object p1, p4, Lcom/android/contacts/model/ContactsSource$EditType;->customColumn:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 616
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 617
    .local p1, customType:Ljava/lang/String;
    iget-object p2, p4, Lcom/android/contacts/model/ContactsSource$EditType;->customColumn:Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    .local p0, state:Lcom/android/contacts/model/EntityDelta;
    .local p1, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    .restart local p2
    .local p4, canInsert:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 600
    .restart local v0       #validValue:Z
    .local p4, hasType:Z
    :cond_4
    const/high16 p4, -0x8000

    goto :goto_2

    .line 604
    .end local v0           #validValue:Z
    .end local p4           #hasType:Z
    :cond_5
    const/4 p4, 0x3

    goto :goto_3
.end method

.method public static trimEmpty(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;)V
    .locals 7
    .parameter "state"
    .parameter "source"

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 403
    .local v0, hasValues:Z
    invoke-virtual {p1}, Lcom/android/contacts/model/ContactsSource;->getDataKinds()Ljava/util/ArrayList;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 404
    .local v5, kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    iget-object p1, v5, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    .line 405
    .local p1, mimeType:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 406
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz p1, :cond_0

    .line 408
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p1           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 410
    .local p1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 411
    .local v3, touched:Z
    :goto_1
    if-nez v3, :cond_3

    .line 412
    const/4 p1, 0x1

    .end local v0           #hasValues:Z
    .local p1, hasValues:Z
    move v0, p1

    .line 413
    .end local p1           #hasValues:Z
    .restart local v0       #hasValues:Z
    goto :goto_0

    .line 410
    .end local v3           #touched:Z
    .local p1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 417
    .restart local v3       #touched:Z
    :cond_3
    const-string v3, "com.google"

    .end local v3           #touched:Z
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v6, "account_type"

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 419
    .local v3, isGoogleSource:Z
    const-string v4, "vnd.android.cursor.item/photo"

    iget-object v6, v5, Lcom/android/contacts/model/ContactsSource$DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 420
    .local v4, isPhoto:Z
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    .line 422
    .local v3, isGooglePhoto:Z
    :goto_2
    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/ContactsSource$DataKind;)Z

    move-result v4

    .end local v4           #isPhoto:Z
    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    .line 424
    const-string v3, "EntityModifier"

    .end local v3           #isGooglePhoto:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trimming: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    move p1, v0

    .end local v0           #hasValues:Z
    .local p1, hasValues:Z
    :goto_3
    move v0, p1

    .line 429
    .end local p1           #hasValues:Z
    .restart local v0       #hasValues:Z
    goto :goto_0

    .line 420
    .local v3, isGoogleSource:Z
    .restart local v4       #isPhoto:Z
    .local p1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 426
    .end local v4           #isPhoto:Z
    .local v3, isGooglePhoto:Z
    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isFromTemplate()Z

    move-result p1

    .end local p1           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez p1, :cond_8

    .line 427
    const/4 p1, 0x1

    .end local v0           #hasValues:Z
    .local p1, hasValues:Z
    goto :goto_3

    .line 431
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isGooglePhoto:Z
    .end local v5           #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    .end local p1           #hasValues:Z
    .restart local v0       #hasValues:Z
    :cond_6
    if-nez v0, :cond_7

    .line 433
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->markDeleted()V

    .line 435
    :cond_7
    return-void

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #isGooglePhoto:Z
    .restart local v5       #kind:Lcom/android/contacts/model/ContactsSource$DataKind;
    :cond_8
    move p1, v0

    .end local v0           #hasValues:Z
    .restart local p1       #hasValues:Z
    goto :goto_3
.end method

.method public static trimEmpty(Lcom/android/contacts/model/EntitySet;Lcom/android/contacts/model/Sources;)V
    .locals 6
    .parameter "set"
    .parameter "sources"

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 386
    .local v3, state:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, accountType:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p1, v0, v4}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v2

    .line 389
    .local v2, source:Lcom/android/contacts/model/ContactsSource;
    invoke-static {v3, v2}, Lcom/android/contacts/model/EntityModifier;->trimEmpty(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;)V

    goto :goto_0

    .line 391
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #source:Lcom/android/contacts/model/ContactsSource;
    .end local v3           #state:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    return-void
.end method
