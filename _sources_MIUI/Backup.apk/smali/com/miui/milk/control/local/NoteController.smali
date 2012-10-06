.class public Lcom/miui/milk/control/local/NoteController;
.super Ljava/lang/Object;
.source "NoteController.java"


# instance fields
.field private mCanceled:Z

.field protected mContext:Landroid/content/Context;

.field private mCurrExportIndex:I

.field private mCurrImportIndex:I

.field private mFolderIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteManager:Lcom/miui/milk/source/note/NoteManager;

.field protected mResolver:Landroid/content/ContentResolver;

.field private mTotalImport:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/NoteController;->mFolderIds:Ljava/util/Vector;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/NoteController;->mNoteIds:Ljava/util/Vector;

    .line 33
    iput v1, p0, Lcom/miui/milk/control/local/NoteController;->mCurrExportIndex:I

    .line 34
    iput v1, p0, Lcom/miui/milk/control/local/NoteController;->mTotalImport:I

    .line 35
    iput v1, p0, Lcom/miui/milk/control/local/NoteController;->mCurrImportIndex:I

    .line 37
    iput-boolean v1, p0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z

    .line 40
    iput-object p1, p0, Lcom/miui/milk/control/local/NoteController;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/control/local/NoteController;->mResolver:Landroid/content/ContentResolver;

    .line 42
    new-instance v0, Lcom/miui/milk/source/note/NoteManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/note/NoteManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    .line 43
    return-void
.end method

.method private prepareIdsByType(I)Ljava/util/Vector;
    .locals 10
    .parameter "typeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "_id"

    .line 186
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 187
    .local v9, ids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 189
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/control/local/NoteController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "parent_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 196
    if-nez v6, :cond_1

    .line 208
    if-eqz v6, :cond_0

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_0
    :goto_0
    return-object v9

    .line 199
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 200
    .local v8, idColumnIndex:I
    const/4 v7, 0x0

    .line 201
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-virtual {v9, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 208
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 208
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #idColumnIndex:I
    :cond_3
    if-eqz v6, :cond_0

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z

    .line 47
    return-void
.end method

.method public exportNotes(Ljava/io/File;)V
    .locals 17
    .parameter "exportFile"

    .prologue
    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 51
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 54
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->newBuilder()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v11

    .line 55
    .local v11, notes:Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/NoteController;->prepareIdsByType(I)Ljava/util/Vector;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/milk/control/local/NoteController;->mFolderIds:Ljava/util/Vector;

    .line 56
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/NoteController;->prepareIdsByType(I)Ljava/util/Vector;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/milk/control/local/NoteController;->mNoteIds:Ljava/util/Vector;

    .line 58
    const/4 v4, 0x0

    .line 59
    .local v4, folderCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/NoteController;->mFolderIds:Ljava/util/Vector;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    if-ge v6, v14, :cond_4

    .line 60
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 110
    :cond_1
    :goto_1
    return-void

    .line 61
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/NoteController;->mFolderIds:Ljava/util/Vector;

    move-object v14, v0

    invoke-virtual {v14, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 63
    .local v5, folderId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object v14, v0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v3

    .line 64
    .local v3, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-eqz v3, :cond_3

    .line 65
    invoke-virtual {v11, v3}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 59
    .end local v3           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v14

    move-object v2, v14

    .line 69
    .local v2, e:Ljava/lang/Exception;
    const-string v14, "NoteController"

    const-string v15, "Cannot load note folder "

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 73
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #folderId:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    .line 74
    .local v9, noteCount:I
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/milk/control/local/NoteController;->mCurrExportIndex:I

    .line 75
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/NoteController;->mNoteIds:Ljava/util/Vector;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    if-ge v7, v14, :cond_6

    .line 76
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z

    move v14, v0

    if-nez v14, :cond_1

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/NoteController;->mNoteIds:Ljava/util/Vector;

    move-object v14, v0

    invoke-virtual {v14, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 79
    .local v10, noteId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object v14, v0

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/miui/milk/source/note/NoteManager;->loadNoteEntity(J)Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v8

    .line 80
    .local v8, note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    if-eqz v8, :cond_5

    .line 81
    invoke-virtual {v11, v8}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addNote(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 82
    add-int/lit8 v9, v9, 0x1

    .line 83
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/milk/control/local/NoteController;->mCurrExportIndex:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/milk/control/local/NoteController;->mCurrExportIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .end local v8           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 85
    :catch_1
    move-exception v14

    move-object v2, v14

    .line 86
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v14, "NoteController"

    const-string v15, "Cannot load note entity "

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 90
    .end local v2           #e:Ljava/lang/Exception;
    .end local v10           #noteId:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v13

    .line 91
    .local v13, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v11}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->build()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setNote(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 92
    const-string v14, "1"

    invoke-virtual {v13, v14}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 94
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z

    move v14, v0

    if-nez v14, :cond_1

    .line 98
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 99
    new-instance v12, Ljava/io/FileOutputStream;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 100
    .local v12, output:Ljava/io/FileOutputStream;
    invoke-virtual {v13}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 101
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 102
    const-string v14, "NoteController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Export Folder Counts : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v14, "NoteController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Export Note Counts : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 104
    .end local v12           #output:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v14

    move-object v2, v14

    .line 105
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v14, "NoteController"

    const-string v15, "Cannot export note "

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 106
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v14

    move-object v2, v14

    .line 107
    .local v2, e:Ljava/io/IOException;
    const-string v14, "NoteController"

    const-string v15, "Cannot export note "

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public getExportedSize()J
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/miui/milk/control/local/NoteController;->mCurrExportIndex:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getImportedSize()J
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/miui/milk/control/local/NoteController;->mCurrImportIndex:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTotalExportSize()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/milk/control/local/NoteController;->mNoteIds:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/control/local/NoteController;->mNoteIds:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getTotalImportSize()J
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/miui/milk/control/local/NoteController;->mTotalImport:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public importNotes(Ljava/io/File;)V
    .locals 14
    .parameter "importFile"

    .prologue
    .line 130
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 131
    .local v5, input:Ljava/io/FileInputStream;
    invoke-static {v5}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v9

    .line 132
    .local v9, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    const/4 v8, 0x0

    .line 133
    .local v8, notes:Lcom/miui/milk/model/NoteProtos$Notes;
    if-eqz v9, :cond_0

    .line 134
    invoke-virtual {v9}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getNote()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v8

    .line 137
    :cond_0
    iget-boolean v11, p0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z

    if-eqz v11, :cond_2

    .line 183
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v8           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v9           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 139
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v8       #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .restart local v9       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    if-eqz v8, :cond_1

    .line 140
    invoke-virtual {v8}, Lcom/miui/milk/model/NoteProtos$Notes;->getNoteList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iput v11, p0, Lcom/miui/milk/control/local/NoteController;->mTotalImport:I

    .line 141
    const/4 v11, 0x0

    iput v11, p0, Lcom/miui/milk/control/local/NoteController;->mCurrImportIndex:I

    .line 142
    const/4 v3, 0x0

    .line 143
    .local v3, folderCount:I
    const/4 v7, 0x0

    .line 145
    .local v7, noteCount:I
    invoke-virtual {v8}, Lcom/miui/milk/model/NoteProtos$Notes;->getFolderList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/NoteProtos$NoteFolder;

    .line 146
    .local v2, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    iget-boolean v11, p0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v11, :cond_1

    .line 148
    :try_start_1
    invoke-virtual {v2}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v10

    .line 149
    .local v10, title:Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 150
    iget-object v11, p0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-virtual {v11, v10}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolderByTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v1

    .line 151
    .local v1, existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-nez v1, :cond_3

    .line 152
    iget-object v11, p0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-virtual {v11, v2}, Lcom/miui/milk/source/note/NoteManager;->addNoteFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    .end local v1           #existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v10           #title:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 157
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v11, "NoteController"

    const-string v12, "Cannot add note folder "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 178
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v3           #folderCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v7           #noteCount:I
    .end local v8           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v9           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_1
    move-exception v11

    move-object v0, v11

    .line 179
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v11, "NoteController"

    const-string v12, "Cannot import notes "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 161
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #folderCount:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v7       #noteCount:I
    .restart local v8       #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .restart local v9       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_4
    :try_start_3
    invoke-virtual {v8}, Lcom/miui/milk/model/NoteProtos$Notes;->getNoteList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/model/NoteProtos$NoteEntity;

    .line 162
    .local v6, note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    iget-boolean v11, p0, Lcom/miui/milk/control/local/NoteController;->mCanceled:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v11, :cond_1

    .line 164
    :try_start_4
    iget-object v11, p0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-virtual {v11, v6}, Lcom/miui/milk/source/note/NoteManager;->shouldRestore(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 165
    iget-object v11, p0, Lcom/miui/milk/control/local/NoteController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    invoke-virtual {v11, v6}, Lcom/miui/milk/source/note/NoteManager;->addNoteEntity(Lcom/miui/milk/model/NoteProtos$NoteEntity;)J

    .line 166
    add-int/lit8 v7, v7, 0x1

    .line 167
    iget v11, p0, Lcom/miui/milk/control/local/NoteController;->mCurrImportIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/miui/milk/control/local/NoteController;->mCurrImportIndex:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 169
    :catch_2
    move-exception v11

    move-object v0, v11

    .line 170
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    const-string v11, "NoteController"

    const-string v12, "Cannot add note entity "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #folderCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v6           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .end local v7           #noteCount:I
    .end local v8           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v9           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :catch_3
    move-exception v11

    move-object v0, v11

    .line 181
    .local v0, e:Ljava/io/IOException;
    const-string v11, "NoteController"

    const-string v12, "Cannot import notes "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 174
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #folderCount:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v7       #noteCount:I
    .restart local v8       #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .restart local v9       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_6
    :try_start_6
    const-string v11, "NoteController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Import Folder Counts : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v11, "NoteController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Import Note Counts : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0
.end method
