.class public Lcom/miui/notes/tool/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static batchDeleteNotes(Landroid/content/ContentResolver;Ljava/util/HashSet;)Z
    .locals 7
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 25
    const-string p0, "DataUtils"

    .end local p0
    const-string p1, "the ids is null"

    .end local p1           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 p0, 0x1

    .line 55
    :goto_0
    return p0

    .line 28
    .restart local p0
    .restart local p1       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 29
    const-string p0, "DataUtils"

    .end local p0
    const-string p1, "no id is in the hashset"

    .end local p1           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 p0, 0x1

    goto :goto_0

    .line 33
    .restart local p0
    .restart local p1       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v4, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 35
    .local v2, id:J
    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-nez v0, :cond_2

    .line 36
    const-string v0, "DataUtils"

    const-string v2, "Don\'t delete system folder root"

    .end local v2           #id:J
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 39
    .restart local v2       #id:J
    :cond_2
    sget-object v0, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 41
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    .end local v2           #id:J
    :cond_3
    :try_start_0
    const-string v0, "notes"

    invoke-virtual {p0, v0, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    .line 45
    .local p0, results:[Landroid/content/ContentProviderResult;
    if-eqz p0, :cond_4

    array-length v0, p0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .end local p0           #results:[Landroid/content/ContentProviderResult;
    if-nez p0, :cond_5

    .line 46
    :cond_4
    const-string p0, "DataUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete notes failed, ids:"

    .end local v1           #i$:Ljava/util/Iterator;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    const/4 p0, 0x0

    goto :goto_0

    .line 49
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local p1       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_5
    const/4 p0, 0x1

    goto :goto_0

    .line 50
    .end local v1           #i$:Ljava/util/Iterator;
    .end local p1           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catch_0
    move-exception p0

    .line 51
    .local p0, e:Landroid/os/RemoteException;
    const-string p1, "DataUtils"

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Landroid/os/RemoteException;
    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_2
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 52
    :catch_1
    move-exception p0

    .line 53
    .local p0, e:Landroid/content/OperationApplicationException;
    const-string p1, "DataUtils"

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Landroid/content/OperationApplicationException;
    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static batchMoveToFolder(Landroid/content/ContentResolver;Ljava/util/HashSet;J)Z
    .locals 5
    .parameter "resolver"
    .parameter
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 69
    const-string p0, "DataUtils"

    .end local p0
    const-string p1, "the ids is null"

    .end local p1           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 p0, 0x1

    .line 94
    .end local p2
    :goto_0
    return p0

    .line 73
    .restart local p0
    .restart local p1       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local p2
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v4, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 75
    .local v2, id:J
    sget-object v0, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 77
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "parent_id"

    .end local v2           #id:J
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 78
    const-string v2, "local_modified"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 79
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_1
    :try_start_0
    const-string p2, "notes"

    .end local p2
    invoke-virtual {p0, p2, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    .line 84
    .local p0, results:[Landroid/content/ContentProviderResult;
    if-eqz p0, :cond_2

    array-length p2, p0

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    aget-object p0, p0, p2

    .end local p0           #results:[Landroid/content/ContentProviderResult;
    if-nez p0, :cond_3

    .line 85
    :cond_2
    const-string p0, "DataUtils"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delete notes failed, ids:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    const/4 p0, 0x0

    goto :goto_0

    .line 88
    .restart local p1       #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    .line 89
    .end local p1           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catch_0
    move-exception p0

    .line 90
    .local p0, e:Landroid/os/RemoteException;
    const-string p1, "DataUtils"

    const-string p2, "%s: %s"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    aput-object v1, p3, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Landroid/os/RemoteException;
    aput-object p0, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_2
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 91
    .restart local v1       #i$:Ljava/util/Iterator;
    :catch_1
    move-exception p0

    .line 92
    .local p0, e:Landroid/content/OperationApplicationException;
    const-string p1, "DataUtils"

    const-string p2, "%s: %s"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    aput-object v1, p3, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Landroid/content/OperationApplicationException;
    aput-object p0, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static checkVisibleFolderName(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 8
    .parameter "resolver"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 168
    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const-string v3, "type=1 AND parent_id<>-3 AND snippet=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 174
    .local v7, exist:Z
    if-eqz v6, :cond_1

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    const/4 v7, 0x1

    .line 178
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_1
    return v7
.end method

.method public static existInDataDatabase(Landroid/content/ContentResolver;J)Z
    .locals 8
    .parameter "resolver"
    .parameter "dataId"

    .prologue
    const/4 v2, 0x0

    .line 154
    sget-object v0, Landroid/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 158
    .local v7, exist:Z
    if-eqz v6, :cond_1

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 160
    const/4 v7, 0x1

    .line 162
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_1
    return v7
.end method

.method public static existInNoteDatabase(Landroid/content/ContentResolver;J)Z
    .locals 8
    .parameter "resolver"
    .parameter "noteId"

    .prologue
    const/4 v2, 0x0

    .line 140
    sget-object v0, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 144
    .local v7, exist:Z
    if-eqz v6, :cond_1

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    const/4 v7, 0x1

    .line 148
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_1
    return v7
.end method

.method public static getCallNumberByNoteId(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "noteId"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 211
    sget-object v1, Landroid/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "data3"

    aput-object v0, v2, v5

    const-string v3, "note_id=? AND mime_type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "vnd.android.cursor.item/call_note"

    aput-object v0, v4, v8

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 217
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    :goto_0
    return-object v0

    .line 220
    :catch_0
    move-exception v7

    .line 221
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    const-string v0, "DataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get call number fails "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFolderNoteWidget(Landroid/content/ContentResolver;J)Ljava/util/HashSet;
    .locals 10
    .parameter "resolver"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 184
    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "widget_id"

    aput-object v0, v2, v5

    const-string v0, "widget_type"

    aput-object v0, v2, v4

    const-string v3, "parent_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 190
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 191
    .local v8, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    if-eqz v6, :cond_2

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    new-instance v8, Ljava/util/HashSet;

    .end local v8           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 196
    .restart local v8       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    :cond_0
    :try_start_0
    new-instance v9, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;

    invoke-direct {v9}, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;-><init>()V

    .line 197
    .local v9, widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetId:I

    .line 198
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetType:I

    .line 199
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v9           #widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_2
    return-object v8

    .line 200
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 201
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v0, "DataUtils"

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getFormattedSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "snippet"

    .prologue
    .line 269
    if-eqz p0, :cond_0

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 271
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 272
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 273
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 276
    .end local v0           #index:I
    :cond_0
    return-object p0
.end method

.method public static getNoteIdByPhoneNumberAndCallDate(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 9
    .parameter "resolver"
    .parameter "phoneNumber"
    .parameter "callDate"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 230
    sget-object v1, Landroid/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "note_id"

    aput-object v0, v2, v5

    const-string v3, "data1=? AND mime_type=? AND PHONE_NUMBERS_EQUAL(data3,?)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "vnd.android.cursor.item/call_note"

    aput-object v0, v4, v8

    const/4 v0, 0x2

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 247
    :goto_0
    return-wide v0

    .line 241
    :catch_0
    move-exception v7

    .line 242
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v0, "DataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get call note id fails "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getSnippetById(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "noteId"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 251
    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "snippet"

    aput-object v0, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 258
    const-string v7, ""

    .line 259
    .local v7, snippet:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 262
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    return-object v7

    .line 265
    .end local v7           #snippet:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Note is not found with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUserFolderCount(Landroid/content/ContentResolver;)I
    .locals 10
    .parameter "resolver"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 101
    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v5

    const-string v3, "type=? AND parent_id<>?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 107
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 108
    .local v6, count:I
    if-eqz v7, :cond_0

    .line 109
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_0
    :goto_0
    return v6

    .line 112
    :catch_0
    move-exception v8

    .line 113
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    const-string v0, "DataUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get folder count failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static moveNoteToFoler(Landroid/content/ContentResolver;JJJ)V
    .locals 4
    .parameter "resolver"
    .parameter "id"
    .parameter "srcFolderId"
    .parameter "desFolderId"

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "parent_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    const-string v1, "origin_parent_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v1, "local_modified"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public static visibleInNoteDatabase(Landroid/content/ContentResolver;JI)Z
    .locals 8
    .parameter "resolver"
    .parameter "noteId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 123
    sget-object v0, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "type=? AND parent_id<>-3"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 130
    .local v7, exist:Z
    if-eqz v6, :cond_1

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    const/4 v7, 0x1

    .line 134
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_1
    return v7
.end method
