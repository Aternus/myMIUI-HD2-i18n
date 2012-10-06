.class public Lcom/android/mms/data/RecipientIdCache;
.super Ljava/lang/Object;
.source "RecipientIdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/RecipientIdCache$Entry;
    }
.end annotation


# static fields
.field private static sAllCanonical:Landroid/net/Uri;

.field private static sInstance:Lcom/android/mms/data/RecipientIdCache;

.field private static sSingleCanonicalAddressUri:Landroid/net/Uri;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/RecipientIdCache;->sAllCanonical:Landroid/net/Uri;

    .line 28
    const-string v0, "content://mms-sms/canonical-address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/RecipientIdCache;->sSingleCanonicalAddressUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lcom/android/mms/data/RecipientIdCache;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public static dump()V
    .locals 6

    .prologue
    const-string v2, "Mms/cache"

    .line 190
    sget-object v3, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    monitor-enter v3

    .line 191
    :try_start_0
    const-string v2, "Mms/cache"

    const-string v4, "*** Recipient ID cache dump ***"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v2, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v2, v2, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 193
    .local v1, id:Ljava/lang/Long;
    const-string v4, "Mms/cache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v2, v2, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Long;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    return-void
.end method

.method public static fill()V
    .locals 14

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v13, "Mms:threadcache"

    .line 61
    const-string v1, "Mms:threadcache"

    invoke-static {v13, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "[RecipientIdCache] fill: begin"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    sget-object v1, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v0, v1, Lcom/android/mms/data/RecipientIdCache;->mContext:Landroid/content/Context;

    .line 66
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/RecipientIdCache;->sAllCanonical:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 68
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 69
    const-string v1, "Mms/cache"

    const-string v2, "null Cursor in fill()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    :try_start_0
    sget-object v1, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    sget-object v2, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v2, v2, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 78
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 81
    .local v8, id:J
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, number:Ljava/lang/String;
    sget-object v2, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v2, v2, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 84
    .end local v8           #id:J
    .end local v10           #number:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    :catchall_1
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 84
    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 89
    const-string v1, "Mms:threadcache"

    invoke-static {v13, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-string v1, "[RecipientIdCache] fill: finished"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->dump()V

    goto :goto_0
.end method

.method public static getAddresses(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .parameter "spaceSepIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/data/RecipientIdCache$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v10, "RecipientId "

    const-string v10, "Mms/cache"

    .line 96
    sget-object v10, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    monitor-enter v10

    .line 97
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v9, numbers:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/data/RecipientIdCache$Entry;>;"
    const-string v11, " "

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, ids:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .local v3, id:Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    .line 109
    .local v6, longId:J
    :try_start_2
    sget-object v11, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v11, v11, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 111
    .local v8, number:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 112
    const-string v11, "Mms/cache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RecipientId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not in cache!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v11, "Mms:threadcache"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 114
    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->dump()V

    .line 117
    :cond_0
    invoke-static {}, Lcom/android/mms/data/RecipientIdCache;->fill()V

    .line 118
    sget-object v11, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v11, v11, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #number:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 121
    .restart local v8       #number:Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 122
    const-string v11, "Mms/cache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RecipientId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has empty number!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v6           #longId:J
    .end local v8           #number:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 106
    .local v1, ex:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 124
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v6       #longId:J
    .restart local v8       #number:Ljava/lang/String;
    :cond_2
    new-instance v11, Lcom/android/mms/data/RecipientIdCache$Entry;

    invoke-direct {v11, v6, v7, v8}, Lcom/android/mms/data/RecipientIdCache$Entry;-><init>(JLjava/lang/String;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #ids:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #longId:J
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #numbers:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/data/RecipientIdCache$Entry;>;"
    :catchall_0
    move-exception v11

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 127
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #ids:[Ljava/lang/String;
    .restart local v5       #len$:I
    .restart local v9       #numbers:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/data/RecipientIdCache$Entry;>;"
    :cond_3
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v9
.end method

.method static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    new-instance v0, Lcom/android/mms/data/RecipientIdCache;

    invoke-direct {v0, p0}, Lcom/android/mms/data/RecipientIdCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/RecipientIdCache$1;

    invoke-direct {v1}, Lcom/android/mms/data/RecipientIdCache$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method

.method private updateCanonicalAddressInDb(JLjava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "number"

    .prologue
    .line 165
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "Mms/cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RecipientIdCache] updateCanonicalAddressInDb: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v5, values:Landroid/content/ContentValues;
    const-string v0, "address"

    invoke-virtual {v5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "_id"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .local v6, buf:Ljava/lang/StringBuilder;
    const/16 v0, 0x3d

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    sget-object v0, Lcom/android/mms/data/RecipientIdCache;->sSingleCanonicalAddressUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 177
    .local v4, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/data/RecipientIdCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 181
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/mms/data/RecipientIdCache$2;

    const-string v2, "updateCanonicalAddressInDb"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/data/RecipientIdCache$2;-><init>(Lcom/android/mms/data/RecipientIdCache;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Lcom/android/mms/data/RecipientIdCache$2;->start()V

    .line 186
    return-void
.end method

.method public static updateNumbers(JLcom/android/mms/data/ContactList;)V
    .locals 9
    .parameter "threadId"
    .parameter "contacts"

    .prologue
    .line 132
    const-wide/16 v4, 0x0

    .line 134
    .local v4, recipientId:J
    invoke-virtual {p2}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 135
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isNumberModified()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/mms/data/Contact;->setIsNumberModified(Z)V

    .line 142
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getRecipientId()J

    move-result-wide v4

    .line 143
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, number1:Ljava/lang/String;
    sget-object v6, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v6, v6, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    .local v3, number2:Ljava/lang/String;
    const-string v6, "Mms:app"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 151
    const-string v6, "Mms/cache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RecipientIdCache] updateNumbers: comparing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 158
    sget-object v6, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    iget-object v6, v6, Lcom/android/mms/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v6, Lcom/android/mms/data/RecipientIdCache;->sInstance:Lcom/android/mms/data/RecipientIdCache;

    invoke-direct {v6, v4, v5, v2}, Lcom/android/mms/data/RecipientIdCache;->updateCanonicalAddressInDb(JLjava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #number1:Ljava/lang/String;
    .end local v3           #number2:Ljava/lang/String;
    :cond_2
    return-void
.end method
