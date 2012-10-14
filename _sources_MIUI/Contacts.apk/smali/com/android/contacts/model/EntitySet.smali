.class public Lcom/android/contacts/model/EntitySet;
.super Ljava/util/ArrayList;
.source "EntitySet.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/model/EntityDelta;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntitySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSplitRawContacts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/android/contacts/model/EntitySet$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntitySet$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntitySet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/EntitySet$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/contacts/model/EntitySet;-><init>()V

    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;II[I)V
    .locals 10
    .parameter
    .parameter "index1"
    .parameter "index2"
    .parameter "backRefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v5, 0x0

    const-string v9, "raw_contact_id2"

    const-string v8, "raw_contact_id1"

    const-string v7, "_id"

    .line 206
    sget-object v3, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 208
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 210
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/EntitySet;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 211
    .local v1, rawContactId1:Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 212
    const-string v3, "raw_contact_id1"

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 217
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/contacts/model/EntitySet;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 218
    .local v2, rawContactId2:Ljava/lang/Long;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 219
    const-string v3, "raw_contact_id2"

    invoke-virtual {v0, v9, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 223
    :goto_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    return-void

    .line 214
    .end local v2           #rawContactId2:Ljava/lang/Long;
    .restart local p0
    :cond_0
    const-string v3, "raw_contact_id1"

    aget v3, p4, p2

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 221
    .end local p0
    .restart local v2       #rawContactId2:Ljava/lang/Long;
    :cond_1
    const-string v3, "raw_contact_id2"

    aget v3, p4, p3

    invoke-virtual {v0, v9, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;[I)V
    .locals 3
    .parameter
    .parameter "backRefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v0

    .line 192
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 193
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 194
    if-eq v1, v2, :cond_0

    .line 195
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/contacts/model/EntitySet;->buildSplitContactDiff(Ljava/util/ArrayList;II[I)V

    .line 193
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v2           #j:I
    :cond_2
    return-void
.end method

.method public static fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntitySet;
    .locals 10
    .parameter "resolver"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 65
    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v8

    .line 69
    .local v8, iterator:Landroid/content/EntityIterator;
    :try_start_0
    new-instance v9, Lcom/android/contacts/model/EntitySet;

    invoke-direct {v9}, Lcom/android/contacts/model/EntitySet;-><init>()V

    .line 71
    .local v9, state:Lcom/android/contacts/model/EntitySet;
    :goto_0
    invoke-interface {v8}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v8}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity;

    .line 74
    .local v6, before:Landroid/content/Entity;
    invoke-static {v6}, Lcom/android/contacts/model/EntityDelta;->fromBefore(Landroid/content/Entity;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v7

    .line 75
    .local v7, entity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v9, v7}, Lcom/android/contacts/model/EntitySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    .end local v6           #before:Landroid/content/Entity;
    .end local v7           #entity:Lcom/android/contacts/model/EntityDelta;
    .end local v9           #state:Lcom/android/contacts/model/EntitySet;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/content/EntityIterator;->close()V

    throw v0

    .restart local v9       #state:Lcom/android/contacts/model/EntitySet;
    :cond_0
    invoke-interface {v8}, Landroid/content/EntityIterator;->close()V

    return-object v9
.end method

.method public static fromSingle(Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntitySet;
    .locals 1
    .parameter "delta"

    .prologue
    .line 53
    new-instance v0, Lcom/android/contacts/model/EntitySet;

    invoke-direct {v0}, Lcom/android/contacts/model/EntitySet;-><init>()V

    .line 54
    .local v0, state:Lcom/android/contacts/model/EntitySet;
    invoke-virtual {v0, p0}, Lcom/android/contacts/model/EntitySet;->add(Ljava/lang/Object;)Z

    .line 55
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntitySet;Lcom/android/contacts/model/EntitySet;)Lcom/android/contacts/model/EntitySet;
    .locals 6
    .parameter "local"
    .parameter "remote"

    .prologue
    .line 89
    if-nez p0, :cond_0

    new-instance p0, Lcom/android/contacts/model/EntitySet;

    .end local p0
    invoke-direct {p0}, Lcom/android/contacts/model/EntitySet;-><init>()V

    .line 92
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/EntitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    .line 93
    .local v4, remoteEntity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 96
    .local v3, rawContactId:Ljava/lang/Long;
    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntitySet;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    .line 97
    .local v1, localEntity:Lcom/android/contacts/model/EntityDelta;
    invoke-static {v1, v4}, Lcom/android/contacts/model/EntityDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v2

    .line 99
    .local v2, merged:Lcom/android/contacts/model/EntityDelta;
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/EntitySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v1           #localEntity:Lcom/android/contacts/model/EntityDelta;
    .end local v2           #merged:Lcom/android/contacts/model/EntityDelta;
    .end local v3           #rawContactId:Ljava/lang/Long;
    .end local v4           #remoteEntity:Lcom/android/contacts/model/EntityDelta;
    :cond_2
    return-object p0
.end method


# virtual methods
.method protected beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    .prologue
    .line 179
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 181
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 182
    return-object v0
.end method

.method public buildDiff()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 117
    .local v4, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->findRawContactId()J

    move-result-wide v8

    .line 118
    .local v8, rawContactId:J
    const/4 v6, -0x1

    .line 121
    .local v6, firstInsertRow:I
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 122
    .local v3, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta;->buildAssert(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 125
    .end local v3           #delta:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 126
    .local v0, assertMark:I
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v12

    new-array v1, v12, [I

    .line 128
    .local v1, backRefs:[I
    const/4 v10, 0x0

    .line 131
    .local v10, rawContactIndex:I
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 132
    .restart local v3       #delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 133
    .local v5, firstBatch:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #rawContactIndex:I
    .local v11, rawContactIndex:I
    aput v5, v1, v10

    .line 134
    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta;->buildDiff(Ljava/util/ArrayList;)V

    .line 137
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v12

    if-nez v12, :cond_1

    move v10, v11

    .end local v11           #rawContactIndex:I
    .restart local v10       #rawContactIndex:I
    goto :goto_1

    .line 140
    .end local v10           #rawContactIndex:I
    .restart local v11       #rawContactIndex:I
    :cond_1
    iget-boolean v12, p0, Lcom/android/contacts/model/EntitySet;->mSplitRawContacts:Z

    if-eqz v12, :cond_2

    move v10, v11

    .end local v11           #rawContactIndex:I
    .restart local v10       #rawContactIndex:I
    goto :goto_1

    .line 142
    .end local v10           #rawContactIndex:I
    .restart local v11       #rawContactIndex:I
    :cond_2
    const-wide/16 v12, -0x1

    cmp-long v12, v8, v12

    if-eqz v12, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 145
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v12, "raw_contact_id1"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 146
    const-string v12, "raw_contact_id2"

    invoke-virtual {v2, v12, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 147
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_2
    move v10, v11

    .line 160
    .end local v11           #rawContactIndex:I
    .restart local v10       #rawContactIndex:I
    goto :goto_1

    .line 149
    .end local v10           #rawContactIndex:I
    .restart local v11       #rawContactIndex:I
    :cond_3
    const/4 v12, -0x1

    if-ne v6, v12, :cond_4

    .line 151
    move v6, v5

    goto :goto_2

    .line 155
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 156
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v12, "raw_contact_id1"

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 157
    const-string v12, "raw_contact_id2"

    invoke-virtual {v2, v12, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 158
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v5           #firstBatch:I
    .end local v11           #rawContactIndex:I
    .restart local v10       #rawContactIndex:I
    :cond_5
    iget-boolean v12, p0, Lcom/android/contacts/model/EntitySet;->mSplitRawContacts:Z

    if-eqz v12, :cond_6

    .line 163
    invoke-direct {p0, v4, v1}, Lcom/android/contacts/model/EntitySet;->buildSplitContactDiff(Ljava/util/ArrayList;[I)V

    .line 167
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v0, :cond_7

    .line 168
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 171
    :cond_7
    return-object v4
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public findRawContactId()J
    .locals 7

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 233
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 234
    .local v2, rawContactId:Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 235
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 238
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v2           #rawContactId:Ljava/lang/Long;
    :goto_0
    return-wide v3

    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntitySet;->indexOfRawContactId(Ljava/lang/Long;)I

    move-result v0

    .line 257
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntitySet;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/EntityDelta;

    move-object v1, p0

    goto :goto_0
.end method

.method public getRawContactId(I)Ljava/lang/Long;
    .locals 3
    .parameter "index"

    .prologue
    .line 245
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntitySet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 247
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 248
    .local v1, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 252
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v1           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public indexOfRawContactId(Ljava/lang/Long;)I
    .locals 5
    .parameter "rawContactId"

    .prologue
    const/4 v4, -0x1

    .line 264
    if-nez p1, :cond_0

    move v3, v4

    .line 272
    :goto_0
    return v3

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v2

    .line 266
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 267
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntitySet;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v0

    .line 268
    .local v0, currentId:Ljava/lang/Long;
    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    .line 269
    goto :goto_0

    .line 266
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #currentId:Ljava/lang/Long;
    :cond_2
    move v3, v4

    .line 272
    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 320
    .local v1, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 321
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 322
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntitySet;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method public splitRawContacts()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/model/EntitySet;->mSplitRawContacts:Z

    .line 301
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v2

    .line 312
    .local v2, size:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    invoke-virtual {p0}, Lcom/android/contacts/model/EntitySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    .line 314
    .local v0, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 316
    .end local v0           #delta:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    return-void
.end method
