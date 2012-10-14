.class public abstract Lcom/miui/milk/tracker/TypeGuidTracker;
.super Ljava/lang/Object;
.source "TypeGuidTracker.java"


# instance fields
.field protected COLUMN_ID:Ljava/lang/String;

.field protected COLUMN_TYPE:Ljava/lang/String;

.field protected CONTENT_URI:Landroid/net/Uri;

.field private final TAG:Ljava/lang/String;

.field private deletedItemKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mPrepared:Z

.field protected mResolver:Landroid/content/ContentResolver;

.field private newItemKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

.field private updatedItemKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/BaseTrackerStore;)V
    .locals 2
    .parameter "context"
    .parameter "trackerStore"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "TypeGuidTracker"

    iput-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->TAG:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->CONTENT_URI:Landroid/net/Uri;

    .line 24
    iput-object v1, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->COLUMN_ID:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->COLUMN_TYPE:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/miui/milk/tracker/TypeGuidTracker;->init()V

    .line 37
    iput-object p1, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->mResolver:Landroid/content/ContentResolver;

    .line 39
    iput-object p2, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    .line 40
    return-void
.end method


# virtual methods
.method public clearPrepared()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->mPrepared:Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->newItemKeys:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    .line 130
    return-void
.end method

.method public closeStore()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 182
    return-void
.end method

.method protected computeFingerprint(J)Ljava/lang/String;
    .locals 9
    .parameter "key"

    .prologue
    .line 133
    const-string v6, "1"

    .line 135
    .local v6, fp:Ljava/lang/String;
    const/4 v7, 0x0

    .line 137
    .local v7, typeCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->COLUMN_TYPE:Ljava/lang/String;

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 142
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 148
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_1
    return-object v6

    .line 148
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "luid"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->getGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewItemKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->newItemKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUpdatedItemKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract init()V
.end method

.method public openStore()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 178
    return-void
.end method

.method public prepareChangeItems()V
    .locals 15

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->mPrepared:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->newItemKeys:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    .line 49
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 50
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->getAllKeys()Ljava/util/HashSet;

    move-result-object v12

    .line 52
    .local v12, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 55
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->COLUMN_ID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->COLUMN_TYPE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ASC"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 61
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 95
    :cond_0
    if-eqz v6, :cond_1

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 107
    :goto_0
    return-void

    .line 64
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->COLUMN_ID:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 65
    .local v10, idColumnIndex:I
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->COLUMN_TYPE:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 67
    .local v14, typeColumnIndex:I
    const/4 v13, 0x0

    .line 68
    .local v13, storeType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 69
    .local v7, cursorId:Ljava/lang/String;
    const/4 v8, 0x0

    .line 71
    .local v8, cursorType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7

    .line 75
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 78
    invoke-virtual {v12, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v12, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, v7}, Lcom/miui/milk/storage/BaseTrackerStore;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 83
    if-eqz v13, :cond_6

    .line 84
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    const-string v0, "TypeGuidTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found an updated item with key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_4
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 95
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #cursorType:Ljava/lang/String;
    .end local v10           #idColumnIndex:I
    .end local v13           #storeType:Ljava/lang/String;
    .end local v14           #typeColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v1}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    throw v0

    .line 89
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #cursorType:Ljava/lang/String;
    .restart local v10       #idColumnIndex:I
    .restart local v13       #storeType:Ljava/lang/String;
    .restart local v14       #typeColumnIndex:I
    :cond_6
    :try_start_2
    const-string v0, "TypeGuidTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found a new item with key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->newItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 95
    :cond_7
    if-eqz v6, :cond_8

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_8
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 101
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 102
    .local v11, key:Ljava/lang/String;
    const-string v0, "TypeGuidTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found a deleted item with key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 106
    .end local v11           #key:Ljava/lang/String;
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->mPrepared:Z

    goto/16 :goto_0
.end method

.method public removeDeletedItemKeys()V
    .locals 3

    .prologue
    .line 191
    iget-object v2, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v2, v1}, Lcom/miui/milk/storage/BaseTrackerStore;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 196
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public resetStore()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 186
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->reset()V

    .line 187
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BaseTrackerStore;->close()V

    .line 188
    return-void
.end method

.method public setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "readIn"
    .parameter "guid"

    .prologue
    .line 155
    if-eqz p2, :cond_2

    .line 156
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/TypeGuidTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/TypeGuidTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->newItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/TypeGuidTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->updatedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/milk/tracker/TypeGuidTracker;->computeFingerprint(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/miui/milk/storage/BaseTrackerStore;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->deletedItemKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/miui/milk/tracker/TypeGuidTracker;->trackerStore:Lcom/miui/milk/storage/BaseTrackerStore;

    invoke-virtual {v0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;->remove(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
