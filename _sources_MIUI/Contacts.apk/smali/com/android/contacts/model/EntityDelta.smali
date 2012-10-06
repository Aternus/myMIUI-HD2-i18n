.class public Lcom/android/contacts/model/EntityDelta;
.super Ljava/lang/Object;
.source "EntityDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/EntityDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastItemCreationTime:J

.field private mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 522
    new-instance v0, Lcom/android/contacts/model/EntityDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/EntityDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    .line 80
    iput-object p1, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 81
    return-void
.end method

.method private containsEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 5
    .parameter "entry"

    .prologue
    .line 345
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 346
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 348
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 351
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private containsValue(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 9
    .parameter "remoteEntry"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "data1"

    .line 164
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, mimeType:Ljava/lang/String;
    const-string v5, "data1"

    invoke-virtual {p1, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, data:Ljava/lang/String;
    if-nez v0, :cond_0

    move v5, v7

    .line 184
    :goto_0
    return v5

    .line 171
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 173
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_1

    move v5, v6

    .line 174
    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 178
    .local v4, value:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v5, "data1"

    invoke-virtual {v4, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    .line 179
    goto :goto_0

    .end local v4           #value:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    move v5, v6

    .line 184
    goto :goto_0
.end method

.method public static fromBefore(Landroid/content/Entity;)Lcom/android/contacts/model/EntityDelta;
    .locals 5
    .parameter "before"

    .prologue
    .line 96
    new-instance v0, Lcom/android/contacts/model/EntityDelta;

    invoke-direct {v0}, Lcom/android/contacts/model/EntityDelta;-><init>()V

    .line 97
    .local v0, entity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 98
    iget-object v3, v0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 100
    .local v2, namedValues:Landroid/content/Entity$NamedContentValues;
    iget-object v3, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0

    .line 102
    .end local v2           #namedValues:Landroid/content/Entity$NamedContentValues;
    :cond_0
    return-object v0
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .parameter "mimeType"
    .parameter "lazyCreate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 258
    .local v0, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 259
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDelta;
    .locals 13
    .parameter "local"
    .parameter "remote"

    .prologue
    const/4 v11, 0x0

    const-string v12, "version"

    .line 113
    iget-object v8, p1, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 114
    .local v8, remoteValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez p0, :cond_1

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isTransient()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move-object v10, v11

    .line 146
    :goto_0
    return-object v10

    .line 117
    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lcom/android/contacts/model/EntityDelta;

    .end local p0
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta;-><init>()V

    .line 120
    .restart local p0
    :cond_2
    iget-object v10, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-nez v10, :cond_5

    move-object v4, v11

    .line 122
    .local v4, localVersion:Ljava/lang/Long;
    :goto_1
    iget-object v10, p1, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v11, "version"

    invoke-virtual {v10, v12}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 123
    .local v9, remoteVersion:Ljava/lang/Long;
    const-string v10, "EntityDelta"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Re-parenting from original version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v10, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v11, p1, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-static {v10, v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v10

    iput-object v10, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 131
    iget-object v10, p1, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 132
    .local v6, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 133
    .local v7, remoteEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 136
    .local v0, childId:Ljava/lang/Long;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 137
    .local v3, localEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v3, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mergeAfter(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 139
    .local v5, merged:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v3, :cond_4

    if-eqz v5, :cond_4

    .line 141
    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_2

    .line 120
    .end local v0           #childId:Ljava/lang/Long;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #localEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v4           #localVersion:Ljava/lang/Long;
    .end local v5           #merged:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v7           #remoteEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v9           #remoteVersion:Ljava/lang/Long;
    :cond_5
    iget-object v10, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v11, "version"

    invoke-virtual {v10, v12}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    move-object v4, v10

    goto :goto_1

    .restart local v4       #localVersion:Ljava/lang/Long;
    .restart local v9       #remoteVersion:Ljava/lang/Long;
    :cond_6
    move-object v10, p0

    .line 146
    goto/16 :goto_0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .parameter
    .parameter "builder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    .line 389
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_0
    return-void
.end method


# virtual methods
.method public MergeEntityDelta(Lcom/android/contacts/model/EntityDelta;)V
    .locals 6
    .parameter "remote"

    .prologue
    .line 151
    iget-object v5, p1, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 152
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 154
    .local v4, remoteEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-direct {p0, v4}, Lcom/android/contacts/model/EntityDelta;->containsValue(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v0

    .line 156
    .local v0, contain:Z
    if-nez v0, :cond_1

    .line 157
    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0

    .line 161
    .end local v0           #contain:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v4           #remoteEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_2
    return-void
.end method

.method public addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 2
    .parameter "entry"

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, mimeType:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-object p1
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, buildInto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v6, "version"

    .line 399
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v3

    .line 400
    .local v3, isContactInsert:Z
    if-nez v3, :cond_0

    .line 402
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 403
    .local v0, beforeId:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "version"

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 404
    .local v1, beforeVersion:Ljava/lang/Long;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 412
    .end local v0           #beforeId:Ljava/lang/Long;
    .end local v1           #beforeVersion:Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 406
    .restart local v0       #beforeId:Ljava/lang/Long;
    .restart local v1       #beforeVersion:Ljava/lang/Long;
    :cond_1
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 408
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 409
    const-string v4, "version"

    invoke-virtual {v2, v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 410
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, buildInto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 422
    .local v4, firstIndex:I
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v8

    .line 423
    .local v8, isContactInsert:Z
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v7

    .line 424
    .local v7, isContactDelete:Z
    if-nez v8, :cond_4

    if-nez v7, :cond_4

    const/4 v11, 0x1

    move v9, v11

    .line 426
    .local v9, isContactUpdate:Z
    :goto_0
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 430
    .local v1, beforeId:Ljava/lang/Long;
    if-eqz v8, :cond_0

    .line 434
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v12, "aggregation_mode"

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 438
    :cond_0
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    sget-object v12, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 439
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 442
    iget-object v11, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 443
    .local v10, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 445
    .local v3, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v7, :cond_2

    .line 447
    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 448
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 449
    if-eqz v8, :cond_5

    .line 451
    const-string v11, "raw_contact_id"

    invoke-virtual {v2, v11, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 460
    :cond_3
    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/model/EntityDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    goto :goto_1

    .line 424
    .end local v1           #beforeId:Ljava/lang/Long;
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #isContactUpdate:Z
    .end local v10           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_4
    const/4 v11, 0x0

    move v9, v11

    goto :goto_0

    .line 454
    .restart local v1       #beforeId:Ljava/lang/Long;
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v3       #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #isContactUpdate:Z
    .restart local v10       #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_5
    const-string v11, "raw_contact_id"

    invoke-virtual {v2, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 456
    :cond_6
    if-eqz v8, :cond_3

    if-eqz v2, :cond_3

    .line 458
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "When parent insert, child must be also"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 464
    .end local v3           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v4, :cond_9

    const/4 v11, 0x1

    move v0, v11

    .line 465
    .local v0, addedOperations:Z
    :goto_3
    if-eqz v0, :cond_a

    if-eqz v9, :cond_a

    .line 467
    const/4 v11, 0x2

    invoke-virtual {p0, v1, v11}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 468
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 471
    const/4 v11, 0x0

    invoke-virtual {p0, v1, v11}, Lcom/android/contacts/model/EntityDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 472
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_8
    :goto_4
    return-void

    .line 464
    .end local v0           #addedOperations:Z
    :cond_9
    const/4 v11, 0x0

    move v0, v11

    goto :goto_3

    .line 473
    .restart local v0       #addedOperations:Z
    :cond_a
    if-eqz v8, :cond_8

    .line 475
    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 476
    const-string v11, "aggregation_mode"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 477
    const-string v11, "_id=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 478
    const/4 v11, 0x0

    invoke-virtual {v2, v11, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 479
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "beforeId"
    .parameter "mode"

    .prologue
    .line 488
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 489
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "aggregation_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 491
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "object"

    .prologue
    const/4 v8, 0x0

    .line 325
    instance-of v6, p1, Lcom/android/contacts/model/EntityDelta;

    if-eqz v6, :cond_4

    .line 326
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    move-object v5, v0

    .line 329
    .local v5, other:Lcom/android/contacts/model/EntityDelta;
    iget-object v6, v5, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v7, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v8

    .line 341
    .end local v5           #other:Lcom/android/contacts/model/EntityDelta;
    :goto_0
    return v6

    .line 331
    .restart local v5       #other:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 332
    .local v4, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 334
    .local v1, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-direct {v5, v1}, Lcom/android/contacts/model/EntityDelta;->containsEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v8

    goto :goto_0

    .line 339
    .end local v1           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    .end local v5           #other:Lcom/android/contacts/model/EntityDelta;
    :cond_4
    move v6, v8

    .line 341
    goto :goto_0
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .parameter "childId"

    .prologue
    const/4 v5, 0x0

    .line 296
    if-nez p1, :cond_0

    move-object v4, v5

    .line 309
    :goto_0
    return-object v4

    .line 302
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 303
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 304
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 305
    goto :goto_0

    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_3
    move-object v4, v5

    .line 309
    goto :goto_0
.end method

.method public getEntryCount(Z)I
    .locals 4
    .parameter "onlyVisible"

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, count:I
    iget-object v3, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 318
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v2, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 320
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getLastItemCreationTime()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/android/contacts/model/EntityDelta;->mLastItemCreationTime:J

    return-wide v0
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 5
    .parameter "mimeType"
    .parameter "onlyVisible"

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 271
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v3, :cond_0

    const/4 v4, 0x0

    .line 279
    :goto_0
    return v4

    .line 273
    :cond_0
    const/4 v1, 0x0

    .line 274
    .local v1, count:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 276
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    move v4, v1

    .line 279
    goto :goto_0
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .parameter "mimeType"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 200
    invoke-direct {p0, p1, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 201
    .local v2, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_0

    move-object v3, v5

    .line 211
    .end local p0
    :goto_0
    return-object v3

    .line 204
    .restart local p0
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 205
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 206
    goto :goto_0

    .line 211
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-object v3, p0

    goto :goto_0

    .restart local p0
    :cond_3
    move-object v3, v5

    goto :goto_0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 7
    .parameter "mimeType"
    .parameter "forceSelection"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 229
    invoke-direct {p0, p1, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 230
    .local v2, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v2, :cond_0

    move-object v4, v5

    .line 249
    .end local p0
    :goto_0
    return-object v4

    .line 232
    .restart local p0
    :cond_0
    const/4 v3, 0x0

    .line 233
    .local v3, primary:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 234
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isSuperPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 235
    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    move-object v3, v0

    goto :goto_1

    .line 241
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    if-nez p2, :cond_4

    move-object v4, v5

    .line 242
    goto :goto_0

    .line 246
    :cond_4
    if-eqz v3, :cond_5

    move-object v4, v3

    .line 247
    goto :goto_0

    .line 249
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-object v4, p0

    goto :goto_0

    .restart local p0
    :cond_6
    move-object v4, v5

    goto :goto_0
.end method

.method public getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContactInsert()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public markDeleted()V
    .locals 5

    .prologue
    .line 358
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 359
    iget-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 360
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 361
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 364
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "source"

    .prologue
    .line 513
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 514
    .local v2, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 515
    .local v3, size:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iput-object v4, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 516
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 517
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 518
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_0
    return-void
.end method

.method public setLastItemCreationTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/android/contacts/model/EntityDelta;->mLastItemCreationTime:J

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v5, "\n("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v5, ") = {"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 373
    .local v4, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 374
    .local v1, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 378
    .end local v1           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    const-string v5, "\n}\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 502
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta;->getEntryCount(Z)I

    move-result v4

    .line 503
    .local v4, size:I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 505
    iget-object v5, p0, Lcom/android/contacts/model/EntityDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 506
    .local v3, mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 507
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 510
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mimeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_1
    return-void
.end method
