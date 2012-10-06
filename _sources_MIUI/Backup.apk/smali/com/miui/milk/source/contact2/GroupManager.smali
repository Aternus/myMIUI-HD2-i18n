.class public Lcom/miui/milk/source/contact2/GroupManager;
.super Ljava/lang/Object;
.source "GroupManager.java"


# instance fields
.field protected COLUMN_ACCOUNT_NAME:Ljava/lang/String;

.field protected COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

.field protected COLUMN_DELETED:Ljava/lang/String;

.field protected COLUMN_ID:Ljava/lang/String;

.field protected COLUMN_SOURCE_ID:Ljava/lang/String;

.field protected CONTENT_URI:Landroid/net/Uri;

.field protected mContext:Landroid/content/Context;

.field private mIsSync:Z

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isSync"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->CONTENT_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "_id"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ID:Ljava/lang/String;

    .line 32
    const-string v0, "account_type"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    .line 33
    const-string v0, "account_name"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "sourceid"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_SOURCE_ID:Ljava/lang/String;

    .line 35
    const-string v0, "deleted"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_DELETED:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->mIsSync:Z

    .line 40
    iput-object p1, p0, Lcom/miui/milk/source/contact2/GroupManager;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->mResolver:Landroid/content/ContentResolver;

    .line 42
    iput-boolean p2, p0, Lcom/miui/milk/source/contact2/GroupManager;->mIsSync:Z

    .line 43
    return-void
.end method

.method private setGroupField(Lcom/miui/milk/model/ContactProtos2$Group$Builder;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "group"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 267
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, columnName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const-string v1, "version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setVersion(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    goto :goto_0

    .line 272
    :cond_2
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setDeleted(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    goto :goto_0

    .line 274
    :cond_3
    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 275
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    goto :goto_0

    .line 276
    :cond_4
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 277
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setNotes(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    goto :goto_0

    .line 278
    :cond_5
    const-string v1, "system_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 279
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setSystemId(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    goto :goto_0

    .line 280
    :cond_6
    const-string v1, "group_visible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 281
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setGroupVisible(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    goto :goto_0

    .line 282
    :cond_7
    const-string v1, "group_order"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->setGroupOrder(I)Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    goto/16 :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v5, "GroupManager"

    const-string v4, "Cannot apply group batch "

    .line 181
    const/4 v1, 0x0

    .line 183
    .local v1, res:[Landroid/content/ContentProviderResult;
    :try_start_0
    iget-object v2, p0, Lcom/miui/milk/source/contact2/GroupManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 191
    return-object v1

    .line 184
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 185
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "GroupManager"

    const-string v2, "Cannot apply group batch "

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    throw v0

    .line 187
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 188
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v2, "GroupManager"

    const-string v2, "Cannot apply group batch "

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    throw v0
.end method

.method public exists(J)Z
    .locals 10
    .parameter "id"

    .prologue
    .line 377
    const/4 v6, 0x0

    .line 380
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    .local v9, whereClause:Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v8, selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/GroupManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    const/4 v7, 0x1

    .line 399
    .local v7, found:Z
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_0
    return v7

    .line 395
    .end local v7           #found:Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #found:Z
    goto :goto_0

    .line 399
    .end local v7           #found:Z
    .end local v8           #selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #whereClause:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public exists(JLandroid/accounts/Account;)Z
    .locals 10
    .parameter "id"
    .parameter "account"

    .prologue
    const-string v0, " is null "

    const-string v0, "= ? "

    const-string v0, " AND "

    .line 328
    const/4 v6, 0x0

    .line 331
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v9, whereClause:Ljava/lang/StringBuffer;
    if-nez p3, :cond_2

    .line 334
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_DELETED:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v8, selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 350
    iget-object v0, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/GroupManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 361
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 362
    const/4 v7, 0x1

    .line 368
    .local v7, found:Z
    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_1
    return v7

    .line 339
    .end local v7           #found:Z
    .end local v8           #selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 368
    .end local v9           #whereClause:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 364
    .restart local v8       #selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #whereClause:Ljava/lang/StringBuffer;
    :cond_4
    const/4 v7, 0x0

    .restart local v7       #found:Z
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 406
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 409
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/GroupManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 412
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const/4 v7, 0x0

    .line 418
    .local v7, empty:Z
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 419
    return v7

    .line 415
    .end local v7           #empty:Z
    :cond_0
    const/4 v7, 0x1

    .restart local v7       #empty:Z
    goto :goto_0
.end method

.method public load(J)Lcom/miui/milk/model/ContactProtos2$Group;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 46
    const-string v0, "GroupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Group;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v7

    .line 51
    .local v7, group:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    const/4 v6, 0x0

    .line 54
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/GroupManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ID:Ljava/lang/String;

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

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 61
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sub-int v8, v0, v11

    .local v8, index:I
    :goto_0
    if-ltz v8, :cond_2

    .line 63
    invoke-direct {p0, v7, v6, v8}, Lcom/miui/milk/source/contact2/GroupManager;->setGroupField(Lcom/miui/milk/model/ContactProtos2$Group$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 70
    .end local v8           #index:I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    .line 73
    :goto_1
    return-object v0

    .line 70
    .restart local v8       #index:I
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_3
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v0

    goto :goto_1

    .line 70
    .end local v8           #index:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public loadByTitle(Ljava/lang/String;Landroid/accounts/Account;)Lcom/miui/milk/model/ContactProtos2$Group;
    .locals 12
    .parameter "title"
    .parameter "account"

    .prologue
    const/4 v11, 0x0

    const-string v0, " is null "

    const-string v0, "= ? "

    const-string v0, " AND "

    .line 213
    const-string v0, "GroupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading group with title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-nez p1, :cond_0

    move-object v0, v11

    .line 263
    :goto_0
    return-object v0

    .line 216
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Group;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Group$Builder;

    move-result-object v7

    .line 219
    .local v7, group:Lcom/miui/milk/model/ContactProtos2$Group$Builder;
    const/4 v6, 0x0

    .line 222
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    .local v10, whereClause:Ljava/lang/StringBuffer;
    if-nez p2, :cond_2

    .line 225
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :goto_1
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_DELETED:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v0, "title"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v9, selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 241
    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/GroupManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int v8, v0, v1

    .local v8, index:I
    :goto_2
    if-ltz v8, :cond_6

    .line 254
    invoke-direct {p0, v7, v6, v8}, Lcom/miui/milk/source/contact2/GroupManager;->setGroupField(Lcom/miui/milk/model/ContactProtos2$Group$Builder;Landroid/database/Cursor;I)V

    .line 253
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 230
    .end local v8           #index:I
    .end local v9           #selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    iget-object v0, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 260
    .end local v10           #whereClause:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .restart local v9       #selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #whereClause:Ljava/lang/StringBuffer;
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v11

    goto/16 :goto_0

    .restart local v8       #index:I
    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_7
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Group$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public prepareAdd(Lcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "group"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Group;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .line 144
    const-string v3, "GroupManager"

    const-string v4, "prepare Saving group"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v3, p0, Lcom/miui/milk/source/contact2/GroupManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "caller_is_syncadapter"

    iget-boolean v5, p0, Lcom/miui/milk/source/contact2/GroupManager;->mIsSync:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 148
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 149
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p2, :cond_0

    .line 150
    iget-object v3, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 158
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/milk/source/contact2/GroupManager;->prepareContentValues(Lcom/miui/milk/model/ContactProtos2$Group;)Landroid/content/ContentValues;

    move-result-object v2

    .line 159
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 160
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-void

    .line 153
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method protected prepareContentValues(Lcom/miui/milk/model/ContactProtos2$Group;)Landroid/content/ContentValues;
    .locals 3
    .parameter "group"

    .prologue
    .line 196
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getNotes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    const-string v1, "notes"

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 204
    const-string v1, "system_id"

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_2
    const-string v1, "group_visible"

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGroupVisible()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v1, "group_order"

    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGroupOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    return-object v0
.end method

.method public prepareUpdate(JLcom/miui/milk/model/ContactProtos2$Group;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "luid"
    .parameter "group"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/milk/model/ContactProtos2$Group;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v3, "GroupManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare Updating group: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v3, p0, Lcom/miui/milk/source/contact2/GroupManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "caller_is_syncadapter"

    iget-boolean v5, p0, Lcom/miui/milk/source/contact2/GroupManager;->mIsSync:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 170
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/milk/source/contact2/GroupManager;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "= ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 174
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p0, p3}, Lcom/miui/milk/source/contact2/GroupManager;->prepareContentValues(Lcom/miui/milk/model/ContactProtos2$Group;)Landroid/content/ContentValues;

    move-result-object v2

    .line 175
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method
