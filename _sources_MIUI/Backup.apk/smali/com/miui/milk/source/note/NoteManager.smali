.class public Lcom/miui/milk/source/note/NoteManager;
.super Ljava/lang/Object;
.source "NoteManager.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/milk/source/note/NoteManager;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    .line 31
    return-void
.end method

.method private getNoteIdByContent(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 153
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "note_id"

    aput-object v3, v2, v8

    const-string v3, "content=? AND mime_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "vnd.android.cursor.item/text_note"

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 161
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v6, :cond_2

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_2
    return-object v7
.end method

.method private getPhoneNumByNoteId(J)Ljava/lang/String;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 175
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "data3"

    aput-object v3, v2, v8

    const-string v3, "note_id=? AND mime_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "vnd.android.cursor.item/call_note"

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 181
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 182
    .local v7, phoneNum:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 186
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_1
    return-object v7
.end method

.method private loadNoteData(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;J)V
    .locals 11
    .parameter "noteEntity"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v7, 0x0

    .line 328
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "note_id= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 330
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 332
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteData;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    move-result-object v10

    .line 333
    .local v10, noteData:Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int v9, v0, v1

    .local v9, index:I
    :goto_0
    if-ltz v9, :cond_b

    .line 334
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, columnName:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 336
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setMimeType(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    .line 333
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 337
    :cond_2
    const-string v0, "created_date"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 358
    .end local v6           #columnName:Ljava/lang/String;
    .end local v9           #index:I
    .end local v10           #noteData:Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 359
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "NoteManager"

    const-string v1, "Cannot load note data "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot load note data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 363
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 339
    .restart local v6       #columnName:Ljava/lang/String;
    .restart local v9       #index:I
    .restart local v10       #noteData:Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    :cond_4
    :try_start_2
    const-string v0, "modified_date"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 340
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto :goto_1

    .line 341
    :cond_5
    const-string v0, "content"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 342
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setContent(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto :goto_1

    .line 343
    :cond_6
    const-string v0, "data1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 344
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData1(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto :goto_1

    .line 345
    :cond_7
    const-string v0, "data2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 346
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData2(J)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto :goto_1

    .line 347
    :cond_8
    const-string v0, "data3"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 348
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData3(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto/16 :goto_1

    .line 349
    :cond_9
    const-string v0, "data4"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 350
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData4(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto/16 :goto_1

    .line 351
    :cond_a
    const-string v0, "data5"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/milk/model/NoteProtos$NoteData$Builder;->setData5(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteData$Builder;

    goto/16 :goto_1

    .line 355
    .end local v6           #columnName:Ljava/lang/String;
    :cond_b
    invoke-virtual {p1, v10}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->addData(Lcom/miui/milk/model/NoteProtos$NoteData$Builder;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 356
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 362
    .end local v9           #index:I
    .end local v10           #noteData:Lcom/miui/milk/model/NoteProtos$NoteData$Builder;
    :cond_c
    if-eqz v7, :cond_d

    .line 363
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_d
    return-void
.end method

.method private prepareDataContentValues(Lcom/miui/milk/model/NoteProtos$NoteData;J)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"
    .parameter "noteId"

    .prologue
    .line 444
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "note_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 447
    const-string v1, "mime_type"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    const-string v1, "created_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getCreatedDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 450
    const-string v1, "modified_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getModifiedDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 451
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 452
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    const-string v1, "data1"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData1()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 457
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData2()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    const-string v1, "data2"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData2()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 460
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData3()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 461
    const-string v1, "data3"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData4()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 464
    const-string v1, "data4"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->hasData5()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 467
    const-string v1, "data5"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_6
    return-object v0
.end method

.method private prepareFolderContentValues(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Landroid/content/ContentValues;
    .locals 5
    .parameter "folder"

    .prologue
    const/4 v4, 0x1

    .line 383
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 384
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    const-string v1, "alert_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getAlertDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    const-string v1, "bg_color_id"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getBgColorId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string v1, "created_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getCreatedDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 388
    const-string v1, "modified_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getModifiedDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 389
    const-string v1, "has_attachment"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getHasAttachment()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 391
    const-string v1, "snippet"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    return-object v0

    .line 389
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private prepareNoteContentValues(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Landroid/content/ContentValues;
    .locals 9
    .parameter "note"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    const-string v8, "parent_id"

    .line 410
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    const-string v3, "alert_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getAlertDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    const-string v3, "bg_color_id"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getBgColorId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v3, "created_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getCreatedDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 415
    const-string v3, "modified_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getModifiedDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    const-string v3, "has_attachment"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getHasAttachment()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getSnippet()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 418
    const-string v3, "snippet"

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getSnippet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasFolderType()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getFolderType()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 421
    const-string v3, "parent_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    :cond_1
    :goto_1
    return-object v2

    :cond_2
    move v4, v7

    .line 416
    goto :goto_0

    .line 422
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->hasFolderTitle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getFolderTitle()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, folderTitle:Ljava/lang/String;
    if-nez v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 425
    :cond_4
    invoke-virtual {p0, v1}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolderByTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v0

    .line 426
    .local v0, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-eqz v0, :cond_1

    .line 427
    const-string v3, "parent_id"

    invoke-virtual {v0}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getLuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method private setNoteEntityField(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "noteEntity"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 307
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, columnName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const-string v1, "alert_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setAlertDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0

    .line 312
    :cond_2
    const-string v1, "bg_color_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setBgColorId(I)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0

    .line 314
    :cond_3
    const-string v1, "created_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0

    .line 316
    :cond_4
    const-string v1, "modified_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 317
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0

    .line 318
    :cond_5
    const-string v1, "has_attachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 319
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setHasAttachment(Z)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 320
    :cond_7
    const-string v1, "snippet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setSnippet(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    goto :goto_0
.end method

.method private setNoteFolderField(Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;Landroid/database/Cursor;I)V
    .locals 3
    .parameter "noteFolder"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 94
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, columnName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v1, "alert_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setAlertDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0

    .line 99
    :cond_2
    const-string v1, "bg_color_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setBgColorId(I)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0

    .line 101
    :cond_3
    const-string v1, "created_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setCreatedDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0

    .line 103
    :cond_4
    const-string v1, "modified_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setModifiedDate(J)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0

    .line 105
    :cond_5
    const-string v1, "has_attachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 106
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setHasAttachment(Z)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 107
    :cond_7
    const-string v1, "snippet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setSnippet(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    goto :goto_0
.end method


# virtual methods
.method public addNoteData(Lcom/miui/milk/model/NoteProtos$NoteData;J)J
    .locals 7
    .parameter "data"
    .parameter "noteId"

    .prologue
    const-string v6, "NoteManager"

    .line 435
    const-string v4, "NoteManager"

    const-string v4, "Saving note data"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/milk/source/note/NoteManager;->prepareDataContentValues(Lcom/miui/milk/model/NoteProtos$NoteData;J)Landroid/content/ContentValues;

    move-result-object v3

    .line 437
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 438
    .local v2, insertedUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 439
    .local v0, id:J
    const-string v4, "NoteManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The new note data has id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-wide v0
.end method

.method public addNoteEntity(Lcom/miui/milk/model/NoteProtos$NoteEntity;)J
    .locals 9
    .parameter "note"

    .prologue
    const-string v8, "NoteManager"

    .line 397
    const-string v6, "NoteManager"

    const-string v6, "Saving note entity"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0, p1}, Lcom/miui/milk/source/note/NoteManager;->prepareNoteContentValues(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Landroid/content/ContentValues;

    move-result-object v5

    .line 399
    .local v5, values:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 400
    .local v2, insertedUri:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 401
    .local v3, noteId:J
    const-string v6, "NoteManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The new note entity has id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getDataList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/NoteProtos$NoteData;

    .line 404
    .local v0, data:Lcom/miui/milk/model/NoteProtos$NoteData;
    invoke-virtual {p0, v0, v3, v4}, Lcom/miui/milk/source/note/NoteManager;->addNoteData(Lcom/miui/milk/model/NoteProtos$NoteData;J)J

    goto :goto_0

    .line 406
    .end local v0           #data:Lcom/miui/milk/model/NoteProtos$NoteData;
    :cond_0
    return-wide v3
.end method

.method public addNoteFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)J
    .locals 8
    .parameter "folder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "NoteManager"

    .line 369
    const-string v5, "NoteManager"

    const-string v5, "Saving note folder"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, folderTitle:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 372
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Cannot create note folder which has empty title"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 375
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/milk/source/note/NoteManager;->prepareFolderContentValues(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Landroid/content/ContentValues;

    move-result-object v4

    .line 376
    .local v4, values:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 377
    .local v3, insertedUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 378
    .local v1, id:J
    const-string v5, "NoteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The new note folder has id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-wide v1
.end method

.method public exists(JJI)Z
    .locals 10
    .parameter "createDate"
    .parameter "modifyDate"
    .parameter "typeId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 473
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 474
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const-string v3, "created_date = ? AND modified_date = ? AND type = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 483
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 484
    .local v7, found:Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 485
    return v7
.end method

.method public getLocalNoteCount()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 509
    const/4 v6, 0x0

    .line 511
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "type = 0 and parent_id != -3"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 518
    if-eqz v6, :cond_1

    .line 519
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 525
    if-eqz v6, :cond_0

    .line 526
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    .line 525
    :cond_1
    if-eqz v6, :cond_2

    .line 526
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 525
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_3

    .line 526
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_0

    .line 525
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 526
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public isEmpty(I)Z
    .locals 8
    .parameter "typeId"

    .prologue
    const/4 v4, 0x0

    .line 489
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "parent_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " != "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, -0x3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 498
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const/4 v7, 0x0

    .line 504
    .local v7, empty:Z
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 505
    return v7

    .line 501
    .end local v7           #empty:Z
    :cond_0
    const/4 v7, 0x1

    .restart local v7       #empty:Z
    goto :goto_0
.end method

.method public loadNoteEntity(J)Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .locals 21
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const-string v4, "NoteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading note entity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v15

    .line 197
    .local v15, noteEntity:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    const/4 v10, 0x0

    .line 200
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "_id= ? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 207
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 208
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int v14, v4, v5

    .local v14, index:I
    :goto_0
    if-ltz v14, :cond_0

    .line 209
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v10

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/source/note/NoteManager;->setNoteEntityField(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;Landroid/database/Cursor;I)V

    .line 208
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 213
    :cond_0
    const-string v4, "parent_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 214
    .local v19, parentId:J
    const-string v4, "origin_parent_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 216
    .local v17, originParentId:J
    const-wide/16 v4, -0x2

    cmp-long v4, v19, v4

    if-nez v4, :cond_4

    .line 217
    const/4 v4, -0x2

    invoke-virtual {v15, v4}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setFolderType(I)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_2
    move-object/from16 v0, p0

    move-object v1, v15

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/source/note/NoteManager;->loadNoteData(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;J)V

    .line 245
    invoke-virtual {v15}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v4

    .end local v14           #index:I
    .end local v17           #originParentId:J
    .end local v19           #parentId:J
    :cond_3
    :goto_2
    return-object v4

    .line 219
    .restart local v14       #index:I
    .restart local v17       #originParentId:J
    .restart local v19       #parentId:J
    :cond_4
    const-wide/16 v11, 0x0

    .line 220
    .local v11, folderId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v19, v4

    if-lez v4, :cond_5

    .line 221
    move-wide/from16 v11, v19

    .line 223
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-lez v4, :cond_6

    .line 224
    move-wide/from16 v11, v17

    .line 226
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v4, v11, v4

    if-lez v4, :cond_1

    .line 227
    :try_start_1
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v16

    .line 228
    .local v16, noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v13

    .line 229
    .local v13, folderTitle:Ljava/lang/String;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 230
    invoke-virtual {v15, v13}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setFolderTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 239
    .end local v11           #folderId:J
    .end local v13           #folderTitle:Ljava/lang/String;
    .end local v14           #index:I
    .end local v16           #noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v17           #originParentId:J
    .end local v19           #parentId:J
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4

    .line 235
    :cond_8
    const/4 v4, 0x0

    .line 239
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public loadNoteEntityByDate(JJ)Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .locals 21
    .parameter "createDate"
    .parameter "modifyDate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    const-string v4, "NoteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading note entity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v15

    .line 253
    .local v15, noteEntity:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    const/4 v10, 0x0

    .line 256
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "created_date = ? AND modified_date = ? AND type = 0"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 265
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 266
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int v14, v4, v5

    .local v14, index:I
    :goto_0
    if-ltz v14, :cond_0

    .line 267
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v10

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/source/note/NoteManager;->setNoteEntityField(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;Landroid/database/Cursor;I)V

    .line 266
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 271
    :cond_0
    const-string v4, "parent_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 272
    .local v19, parentId:J
    const-string v4, "origin_parent_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 274
    .local v17, originParentId:J
    const-wide/16 v4, -0x2

    cmp-long v4, v19, v4

    if-nez v4, :cond_4

    .line 275
    const/4 v4, -0x2

    invoke-virtual {v15, v4}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setFolderType(I)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_2
    invoke-virtual {v15}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->getLuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object v1, v15

    move-wide v2, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/milk/source/note/NoteManager;->loadNoteData(Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;J)V

    .line 303
    invoke-virtual {v15}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v4

    .end local v14           #index:I
    .end local v17           #originParentId:J
    .end local v19           #parentId:J
    :cond_3
    :goto_2
    return-object v4

    .line 277
    .restart local v14       #index:I
    .restart local v17       #originParentId:J
    .restart local v19       #parentId:J
    :cond_4
    const-wide/16 v11, 0x0

    .line 278
    .local v11, folderId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v19, v4

    if-lez v4, :cond_5

    .line 279
    move-wide/from16 v11, v19

    .line 281
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-lez v4, :cond_6

    .line 282
    move-wide/from16 v11, v17

    .line 284
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v4, v11, v4

    if-lez v4, :cond_1

    .line 285
    :try_start_1
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v16

    .line 286
    .local v16, noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v13

    .line 287
    .local v13, folderTitle:Ljava/lang/String;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 288
    invoke-virtual {v15, v13}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setFolderTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 297
    .end local v11           #folderId:J
    .end local v13           #folderTitle:Ljava/lang/String;
    .end local v14           #index:I
    .end local v16           #noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v17           #originParentId:J
    .end local v19           #parentId:J
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4

    .line 293
    :cond_8
    const/4 v4, 0x0

    .line 297
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 34
    const-string v0, "NoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading note folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v8

    .line 38
    .local v8, noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    const/4 v6, 0x0

    .line 41
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 48
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sub-int v7, v0, v11

    .local v7, index:I
    :goto_0
    if-ltz v7, :cond_2

    .line 50
    invoke-direct {p0, v8, v6, v7}, Lcom/miui/milk/source/note/NoteManager;->setNoteFolderField(Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 57
    .end local v7           #index:I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    .line 59
    :goto_1
    return-object v0

    .line 57
    .restart local v7       #index:I
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_3
    invoke-virtual {v8}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v0

    goto :goto_1

    .line 57
    .end local v7           #index:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public loadNoteFolderByTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .locals 11
    .parameter "title"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 63
    const-string v0, "NoteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading note folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v8

    .line 67
    .local v8, noteFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    const/4 v6, 0x0

    .line 70
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/note/NoteManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "snippet= ? and type = 1 and parent_id != -3"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 79
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sub-int v7, v0, v10

    .local v7, index:I
    :goto_0
    if-ltz v7, :cond_2

    .line 81
    invoke-direct {p0, v8, v6, v7}, Lcom/miui/milk/source/note/NoteManager;->setNoteFolderField(Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 88
    .end local v7           #index:I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    .line 90
    :goto_1
    return-object v0

    .line 88
    .restart local v7       #index:I
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_3
    invoke-virtual {v8}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v0

    goto :goto_1

    .line 88
    .end local v7           #index:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public shouldRestore(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Z
    .locals 11
    .parameter "note"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 114
    const/4 v0, 0x0

    .local v0, content:Ljava/lang/String;
    const/4 v6, 0x0

    .line 115
    .local v6, phoneNum:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getDataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/NoteProtos$NoteData;

    .line 116
    .local v1, data:Lcom/miui/milk/model/NoteProtos$NoteData;
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "vnd.android.cursor.item/text_note"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 117
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v9

    .line 149
    .end local v1           #data:Lcom/miui/milk/model/NoteProtos$NoteData;
    :goto_1
    return v7

    .line 124
    .restart local v1       #data:Lcom/miui/milk/model/NoteProtos$NoteData;
    :cond_1
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "vnd.android.cursor.item/call_note"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 125
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteData;->getData3()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 130
    .end local v1           #data:Lcom/miui/milk/model/NoteProtos$NoteData;
    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/milk/source/note/NoteManager;->getNoteIdByContent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 132
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v5, :cond_6

    .line 134
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 135
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 137
    .local v3, id:J
    invoke-direct {p0, v3, v4}, Lcom/miui/milk/source/note/NoteManager;->getPhoneNumByNoteId(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    .line 138
    goto :goto_1

    .end local v3           #id:J
    :cond_4
    move v7, v10

    .line 142
    goto :goto_1

    :cond_5
    move v7, v9

    .line 145
    goto :goto_1

    :cond_6
    move v7, v10

    .line 149
    goto :goto_1
.end method
