.class public Lcom/miui/milk/control/cloud/NoteCloudController;
.super Lcom/miui/milk/control/cloud/BaseCloudController;
.source "NoteCloudController.java"


# instance fields
.field private mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

.field private mNoteManager:Lcom/miui/milk/source/note/NoteManager;

.field private mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/NoteFolderTrackerStore;Lcom/miui/milk/storage/NoteTrackerStore;)V
    .locals 1
    .parameter "context"
    .parameter "folderTrackerStore"
    .parameter "noteTrackerStore"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/BaseCloudController;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/miui/milk/source/note/NoteManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/note/NoteManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    .line 39
    new-instance v0, Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-direct {v0, p1, p2}, Lcom/miui/milk/source/note/NoteFolderTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/NoteFolderTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    .line 40
    new-instance v0, Lcom/miui/milk/source/note/NoteTracker;

    invoke-direct {v0, p1, p3}, Lcom/miui/milk/source/note/NoteTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/NoteTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    .line 42
    return-void
.end method

.method private checkEmpty()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/milk/source/note/NoteManager;->isEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteFolderTracker;->resetStore()V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/milk/source/note/NoteManager;->isEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->resetStore()V

    .line 608
    :cond_1
    return-void
.end method

.method private closeStore()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteFolderTracker;->closeStore()V

    .line 617
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->openStore()V

    .line 618
    return-void
.end method

.method private openStore()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteFolderTracker;->openStore()V

    .line 612
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->openStore()V

    .line 613
    return-void
.end method

.method private processAfterSave(Lcom/miui/milk/model/NoteProtos$Notes;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    .locals 10
    .parameter "notes"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v6, "someting error from server, folder without guid"

    const-string v6, "0"

    const-string v6, "/"

    const-string v9, "NoteCloudController"

    .line 427
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->openStore()V

    .line 428
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$Notes;->getFolderList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/NoteProtos$NoteFolder;

    .line 430
    .local v1, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getLuid()Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, luid:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, guid:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 434
    const-string v6, "NoteCloudController"

    const-string v7, "someting error from server, folder without luid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, folder without luid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 446
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "NoteCloudController"

    const-string v6, "Cannot process after save folder "

    invoke-static {v9, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->closeStore()V

    .line 448
    throw v0

    .line 437
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #guid:Ljava/lang/String;
    .restart local v4       #luid:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 438
    :cond_1
    const-string v6, "NoteCloudController"

    const-string v7, "someting error from server, folder without guid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, folder without guid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 441
    :cond_2
    iget-object v6, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v2}, Lcom/miui/milk/source/note/NoteFolderTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 442
    const-string v6, "NoteCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save folder guid/luid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 451
    .end local v1           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/NoteProtos$Notes;->getNoteList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/milk/model/NoteProtos$NoteEntity;

    .line 453
    .local v5, note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :try_start_2
    invoke-virtual {v5}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getLuid()Ljava/lang/String;

    move-result-object v4

    .line 454
    .restart local v4       #luid:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 455
    .restart local v2       #guid:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 456
    const-string v6, "NoteCloudController"

    const-string v7, "someting error from server, note without luid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, note without luid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 467
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 468
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v6, "NoteCloudController"

    const-string v6, "Cannot process after save note "

    invoke-static {v9, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->closeStore()V

    .line 470
    throw v0

    .line 459
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #guid:Ljava/lang/String;
    .restart local v4       #luid:Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-static {v2}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "0"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 460
    :cond_5
    const-string v6, "NoteCloudController"

    const-string v7, "someting error from server, note without guid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "someting error from server, note without guid"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 463
    :cond_6
    iget-object v6, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v2}, Lcom/miui/milk/source/note/NoteTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 464
    const-string v6, "NoteCloudController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save note guid/luid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 474
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    .end local v5           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :cond_7
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->closeStore()V

    .line 475
    return-void
.end method

.method private saveFolderBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;ILandroid/content/SharedPreferences;)V
    .locals 25
    .parameter "callback"
    .parameter "totalCount"
    .parameter "sharedPref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/NoteCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 123
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->newBuilder()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v12

    .line 124
    .local v12, notes:Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->openStore()V

    .line 125
    const/4 v7, 0x0

    .line 128
    .local v7, folderCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteFolderTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 130
    .local v8, folderId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v21, v0

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v6

    .line 131
    .local v6, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-eqz v6, :cond_0

    .line 132
    invoke-virtual {v6}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v11

    .line 133
    .local v11, nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v6

    .line 134
    invoke-virtual {v12, v6}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 135
    add-int/lit8 v7, v7, 0x1

    .line 136
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    .line 137
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v6           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v8           #folderId:Ljava/lang/String;
    .end local v11           #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :cond_1
    :goto_1
    return-void

    .line 141
    .restart local v8       #folderId:Ljava/lang/String;
    :catch_0
    move-exception v21

    move-object/from16 v4, v21

    .line 142
    .local v4, e:Ljava/lang/Exception;
    const-string v21, "NoteCloudController"

    const-string v22, "Cannot load note folder "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 146
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #folderId:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteFolderTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 148
    .restart local v8       #folderId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v21, v0

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v6

    .line 149
    .restart local v6       #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-eqz v6, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object/from16 v21, v0

    invoke-virtual {v6}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getLuid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/miui/milk/source/note/NoteFolderTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, guid:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v11

    .line 152
    .restart local v11       #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    if-eqz v9, :cond_4

    .line 153
    invoke-virtual {v11, v9}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 155
    :cond_4
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->UPDATE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v6

    .line 156
    invoke-virtual {v12, v6}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 157
    add-int/lit8 v7, v7, 0x1

    .line 158
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_3

    .line 159
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 163
    .end local v6           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v9           #guid:Ljava/lang/String;
    .end local v11           #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :catch_1
    move-exception v21

    move-object/from16 v4, v21

    .line 164
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v21, "NoteCloudController"

    const-string v22, "Cannot load note folder "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 168
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #folderId:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/source/note/NoteFolderTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 170
    .restart local v8       #folderId:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v21, v0

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolder(J)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v6

    .line 171
    .restart local v6       #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v11

    .line 172
    .restart local v11       #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    if-eqz v6, :cond_8

    .line 173
    invoke-virtual {v6}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v11

    .line 177
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object/from16 v21, v0

    invoke-virtual {v11}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->getLuid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/miui/milk/source/note/NoteFolderTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 178
    .restart local v9       #guid:Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 179
    invoke-virtual {v11, v9}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    .line 181
    :cond_7
    sget-object v21, Lcom/miui/milk/model/CommonProtos$ActionType;->DELETE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v6

    .line 182
    invoke-virtual {v12, v6}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 183
    add-int/lit8 v7, v7, 0x1

    .line 184
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_6

    .line 185
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 188
    .end local v6           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v9           #guid:Ljava/lang/String;
    .end local v11           #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :catch_2
    move-exception v21

    move-object/from16 v4, v21

    .line 189
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v21, "NoteCloudController"

    const-string v22, "Cannot load note folder "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 175
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v6       #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .restart local v11       #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :cond_8
    :try_start_3
    invoke-virtual {v11, v8}, Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 193
    .end local v6           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v8           #folderId:Ljava/lang/String;
    .end local v11           #nb:Lcom/miui/milk/model/NoteProtos$NoteFolder$Builder;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->closeStore()V

    .line 195
    const-string v21, "NoteCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deviceId : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v21, "NoteCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IMSI : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v12}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->getFolderList()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_a

    .line 198
    const-string v21, "NoteCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Export Folder Counts : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 201
    :cond_a
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v18

    .line 202
    .local v18, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setNote(Lcom/miui/milk/model/NoteProtos$Notes$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 205
    if-eqz v18, :cond_1

    .line 206
    const/4 v15, 0x0

    .line 208
    .local v15, response:Lorg/apache/http/HttpResponse;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v13

    .line 210
    .local v13, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_b

    .line 211
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 245
    .end local v13           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v21

    move-object/from16 v4, v21

    .line 246
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v21, "NoteCloudController"

    const-string v22, "Cannot send folder "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/NoteCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 248
    throw v4

    .line 215
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v13       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 216
    const-string v21, "NoteCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Export Folder Counts : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/NoteCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 219
    if-eqz v15, :cond_e

    .line 220
    const-string v21, "M_WATERMARK"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v20

    .line 221
    .local v20, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v19, 0x0

    .line 222
    .local v19, waterMark:Ljava/lang/String;
    if-eqz v20, :cond_c

    .line 223
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 226
    :cond_c
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 227
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v17

    .line 228
    .local v17, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getNote()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v14

    .line 229
    .local v14, respNotes:Lcom/miui/milk/model/NoteProtos$Notes;
    if-eqz v14, :cond_d

    .line 230
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/NoteCloudController;->processAfterSave(Lcom/miui/milk/model/NoteProtos$Notes;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 233
    :cond_d
    if-eqz v19, :cond_e

    .line 234
    invoke-interface/range {p3 .. p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 235
    .local v16, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v21, "watermark_note"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    const-string v21, "NoteCloudController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "get waterMark : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #respNotes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v16           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v17           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v19           #waterMark:Ljava/lang/String;
    .end local v20           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_e
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "0"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "100"

    aput-object v23, v21, v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_1

    .line 242
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1
.end method

.method private saveNotePerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    .locals 26
    .parameter "callback"
    .parameter "start"
    .parameter "totalCount"
    .parameter "sharedPref"
    .parameter "batchCount"
    .parameter "totalTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/NoteCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 257
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->newBuilder()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v13

    .line 259
    .local v13, notes:Lcom/miui/milk/model/NoteProtos$Notes$Builder;
    const/4 v11, 0x0

    .line 264
    .local v11, noteCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 265
    move v0, v7

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v22, v0

    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 268
    .local v12, noteId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v22, v0

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/miui/milk/source/note/NoteManager;->loadNoteEntity(J)Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v10

    .line 269
    .local v10, note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    if-eqz v10, :cond_1

    .line 270
    invoke-virtual {v10}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v9

    .line 271
    .local v9, nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    sget-object v22, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v10

    .line 272
    invoke-virtual {v13, v10}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addNote(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 273
    add-int/lit8 v11, v11, 0x1

    .line 274
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    mul-int/lit8 v24, p5, 0xa

    add-int v24, v24, p2

    add-int v24, v24, v11

    mul-int/lit8 v24, v24, 0x64

    div-int v24, v24, p6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "100"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_1

    .line 279
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v9           #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .end local v10           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .end local v12           #noteId:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 283
    .restart local v12       #noteId:Ljava/lang/String;
    :catch_0
    move-exception v22

    move-object/from16 v4, v22

    .line 284
    .local v4, e:Ljava/lang/Exception;
    const-string v22, "NoteCloudController"

    const-string v23, "Cannot load note "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v4           #e:Ljava/lang/Exception;
    .end local v12           #noteId:Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 290
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 291
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int v22, v22, v23

    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 293
    move v0, v7

    move/from16 v1, p2

    if-lt v0, v1, :cond_4

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v22, v0

    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v8, v7, v22

    .line 295
    .local v8, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 297
    .restart local v12       #noteId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v22, v0

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/miui/milk/source/note/NoteManager;->loadNoteEntity(J)Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v10

    .line 298
    .restart local v10       #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    if-eqz v10, :cond_4

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getLuid()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/miui/milk/source/note/NoteTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, guid:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v9

    .line 301
    .restart local v9       #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    if-eqz v6, :cond_3

    .line 302
    invoke-virtual {v9, v6}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 304
    :cond_3
    sget-object v22, Lcom/miui/milk/model/CommonProtos$ActionType;->UPDATE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v10

    .line 305
    invoke-virtual {v13, v10}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addNote(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 306
    add-int/lit8 v11, v11, 0x1

    .line 307
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    mul-int/lit8 v24, p5, 0xa

    add-int v24, v24, p2

    add-int v24, v24, v11

    mul-int/lit8 v24, v24, 0x64

    div-int v24, v24, p6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "100"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_4

    .line 312
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 316
    .end local v6           #guid:Ljava/lang/String;
    .end local v9           #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .end local v10           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :catch_1
    move-exception v22

    move-object/from16 v4, v22

    .line 317
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v22, "NoteCloudController"

    const-string v23, "Cannot load note "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #index:I
    .end local v12           #noteId:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 323
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int v7, v22, v23

    .line 324
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/milk/source/note/NoteTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int v22, v22, v23

    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 327
    move v0, v7

    move/from16 v1, p2

    if-lt v0, v1, :cond_7

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v22, v0

    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v22, v7, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v8, v22, v23

    .line 329
    .restart local v8       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/note/NoteTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 331
    .restart local v12       #noteId:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object/from16 v22, v0

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/miui/milk/source/note/NoteManager;->loadNoteEntity(J)Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v10

    .line 332
    .restart local v10       #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->newBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v9

    .line 333
    .restart local v9       #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    if-eqz v10, :cond_8

    .line 334
    invoke-virtual {v10}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->toBuilder()Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v9

    .line 338
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object/from16 v22, v0

    invoke-virtual {v9}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->getLuid()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/miui/milk/source/note/NoteTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 339
    .restart local v6       #guid:Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 340
    invoke-virtual {v9, v6}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    .line 342
    :cond_6
    sget-object v22, Lcom/miui/milk/model/CommonProtos$ActionType;->DELETE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->build()Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v10

    .line 343
    invoke-virtual {v13, v10}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->addNote(Lcom/miui/milk/model/NoteProtos$NoteEntity;)Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    .line 344
    add-int/lit8 v11, v11, 0x1

    .line 345
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    mul-int/lit8 v24, p5, 0xa

    add-int v24, v24, p2

    add-int v24, v24, v11

    mul-int/lit8 v24, v24, 0x64

    div-int v24, v24, p6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "100"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_7

    .line 350
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 353
    .end local v6           #guid:Ljava/lang/String;
    .end local v9           #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .end local v10           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :catch_2
    move-exception v22

    move-object/from16 v4, v22

    .line 354
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v22, "NoteCloudController"

    const-string v23, "Cannot load note "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #index:I
    .end local v12           #noteId:Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 336
    .restart local v8       #index:I
    .restart local v9       #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .restart local v10       #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .restart local v12       #noteId:Ljava/lang/String;
    :cond_8
    :try_start_3
    invoke-virtual {v9, v12}, Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 359
    .end local v8           #index:I
    .end local v9           #nb:Lcom/miui/milk/model/NoteProtos$NoteEntity$Builder;
    .end local v10           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    .end local v12           #noteId:Ljava/lang/String;
    :cond_9
    const-string v22, "NoteCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "deviceId : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v22, "NoteCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IMSI : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v13}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->getNoteList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_a

    .line 363
    const-string v22, "NoteCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Export Note Counts : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 367
    :cond_a
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v19

    .line 368
    .local v19, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setNote(Lcom/miui/milk/model/NoteProtos$Notes$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 371
    if-eqz v19, :cond_0

    .line 372
    const/16 v16, 0x0

    .line 374
    .local v16, response:Lorg/apache/http/HttpResponse;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v14

    .line 376
    .local v14, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    mul-int/lit8 v24, p5, 0xa

    add-int v24, v24, p2

    add-int v24, v24, v11

    mul-int/lit8 v24, v24, 0x64

    div-int v24, v24, p6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "100"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_b

    .line 380
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 418
    .end local v14           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_3
    move-exception v22

    move-object/from16 v4, v22

    .line 419
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v22, "NoteCloudController"

    const-string v23, "Cannot send note "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/NoteCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 421
    throw v4

    .line 384
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v14       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 385
    const-string v22, "NoteCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Export Note Counts : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/NoteCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 388
    if-eqz v16, :cond_e

    .line 390
    const-string v22, "M_WATERMARK"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v21

    .line 391
    .local v21, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v20, 0x0

    .line 392
    .local v20, waterMark:Ljava/lang/String;
    if-eqz v21, :cond_c

    .line 393
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 395
    :cond_c
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 396
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v18

    .line 398
    .local v18, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getNote()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v15

    .line 399
    .local v15, respNotes:Lcom/miui/milk/model/NoteProtos$Notes;
    if-eqz v15, :cond_d

    .line 400
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/NoteCloudController;->processAfterSave(Lcom/miui/milk/model/NoteProtos$Notes;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 403
    :cond_d
    if-eqz v20, :cond_e

    .line 404
    invoke-interface/range {p4 .. p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 405
    .local v17, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v22, "watermark_note"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    const-string v22, "NoteCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "get waterMark : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v15           #respNotes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v17           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v18           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v20           #waterMark:Ljava/lang/String;
    .end local v21           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_e
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v11

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    mul-int/lit8 v24, p5, 0xa

    add-int v24, v24, p2

    add-int v24, v24, v11

    add-int/lit8 v24, v24, 0xa

    mul-int/lit8 v24, v24, 0x64

    div-int v24, v24, p6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string v24, "100"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_0

    .line 415
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1
.end method


# virtual methods
.method public calculateSyncSize()I
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/note/NoteTracker;->prepareChangeItems()V

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, totalCount:I
    iget-object v1, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    iget-object v1, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    iget-object v1, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/note/NoteTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public clearPrepared()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteFolderTracker;->clearPrepared()V

    .line 623
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->openStore()V

    .line 624
    return-void
.end method

.method public read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 34
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 479
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 481
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/NoteCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->checkEmpty()V

    .line 488
    const-string v4, "NoteCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v4, "NoteCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/16 v24, 0x0

    .line 492
    .local v24, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v23

    .line 494
    .local v23, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "restore_watermark_note"

    const-string v5, ""

    move-object/from16 v0, p2

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 495
    .local v31, waterMark:Ljava/lang/String;
    if-eqz v31, :cond_0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 496
    const-string v4, "M_WATERMARK_ORIGINAL"

    move-object/from16 v0, v23

    move-object v1, v4

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v27

    .line 500
    .local v27, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/NoteProtos$Notes;->newBuilder()Lcom/miui/milk/model/NoteProtos$Notes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/milk/model/NoteProtos$Notes$Builder;->build()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v4

    move-object/from16 v0, v27

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setNote(Lcom/miui/milk/model/NoteProtos$Notes;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v6

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/NoteCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 504
    if-eqz v24, :cond_4

    .line 506
    const-string v4, "M_WATERMARK"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v32

    .line 507
    .local v32, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v33, 0x0

    .line 508
    .local v33, waterMarkNew:Ljava/lang/String;
    if-eqz v32, :cond_1

    .line 509
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v33

    .line 512
    :cond_1
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 513
    .local v12, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v12}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v28

    .line 515
    .local v28, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v28 .. v28}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getNote()Lcom/miui/milk/model/NoteProtos$Notes;

    move-result-object v22

    .line 516
    .local v22, notes:Lcom/miui/milk/model/NoteProtos$Notes;
    if-eqz v22, :cond_b

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->openStore()V

    .line 518
    const/16 v16, 0x0

    .line 519
    .local v16, folderCount:I
    const/16 v21, 0x0

    .line 520
    .local v21, noteCount:I
    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/model/NoteProtos$Notes;->getNoteCount()I

    move-result v30

    .line 521
    .local v30, totalCount:I
    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/model/NoteProtos$Notes;->getFolderList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/milk/model/NoteProtos$NoteFolder;

    .line 522
    .local v15, folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    invoke-virtual {v15}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getSnippet()Ljava/lang/String;

    move-result-object v29

    .line 523
    .local v29, title:Ljava/lang/String;
    if-eqz v29, :cond_3

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/miui/milk/source/note/NoteManager;->loadNoteFolderByTitle(Ljava/lang/String;)Lcom/miui/milk/model/NoteProtos$NoteFolder;

    move-result-object v13

    .line 525
    .local v13, existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    if-nez v13, :cond_5

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object v4, v0

    invoke-virtual {v4, v15}, Lcom/miui/milk/source/note/NoteManager;->addNoteFolder(Lcom/miui/milk/model/NoteProtos$NoteFolder;)J

    move-result-wide v18

    .line 527
    .local v18, newLuid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object v4, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v15}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getGuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/miui/milk/source/note/NoteFolderTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 532
    .end local v13           #existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v18           #newLuid:J
    :cond_3
    :goto_0
    add-int/lit8 v16, v16, 0x1

    .line 534
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    mul-int/lit8 v6, v21, 0x64

    div-int v6, v6, v30

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "100"

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 538
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 594
    .end local v12           #entity:Lorg/apache/http/HttpEntity;
    .end local v15           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v16           #folderCount:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v21           #noteCount:I
    .end local v22           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v23           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24           #response:Lorg/apache/http/HttpResponse;
    .end local v27           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v28           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v29           #title:Ljava/lang/String;
    .end local v30           #totalCount:I
    .end local v31           #waterMark:Ljava/lang/String;
    .end local v32           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v33           #waterMarkNew:Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 482
    :catch_0
    move-exception v11

    .line 483
    .local v11, e1:Ljava/lang/Exception;
    goto :goto_1

    .line 529
    .end local v11           #e1:Ljava/lang/Exception;
    .restart local v12       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .restart local v15       #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .restart local v16       #folderCount:I
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v21       #noteCount:I
    .restart local v22       #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .restart local v23       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24       #response:Lorg/apache/http/HttpResponse;
    .restart local v27       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v28       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v29       #title:Ljava/lang/String;
    .restart local v30       #totalCount:I
    .restart local v31       #waterMark:Ljava/lang/String;
    .restart local v32       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v33       #waterMarkNew:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    move-object v4, v0

    invoke-virtual {v13}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getLuid()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v15}, Lcom/miui/milk/model/NoteProtos$NoteFolder;->getGuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/miui/milk/source/note/NoteFolderTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 585
    .end local v12           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #existFolder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v15           #folder:Lcom/miui/milk/model/NoteProtos$NoteFolder;
    .end local v16           #folderCount:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v21           #noteCount:I
    .end local v22           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v23           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v28           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v29           #title:Ljava/lang/String;
    .end local v30           #totalCount:I
    .end local v31           #waterMark:Ljava/lang/String;
    .end local v32           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v33           #waterMarkNew:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v10, v4

    .line 586
    .local v10, e:Ljava/lang/Exception;
    const-string v4, "NoteCloudController"

    const-string v5, "Cannot read note "

    invoke-static {v4, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    if-nez v24, :cond_c

    .line 588
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "EXCEPTION"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "2101"

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    goto :goto_1

    .line 544
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v12       #entity:Lorg/apache/http/HttpEntity;
    .restart local v16       #folderCount:I
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v21       #noteCount:I
    .restart local v22       #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .restart local v23       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v27       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v28       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v30       #totalCount:I
    .restart local v31       #waterMark:Ljava/lang/String;
    .restart local v32       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v33       #waterMarkNew:Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/model/NoteProtos$Notes;->getNoteList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/miui/milk/model/NoteProtos$NoteEntity;

    .line 545
    .local v20, note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getCreatedDate()J

    move-result-wide v5

    .line 546
    .local v5, createDate:J
    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getModifiedDate()J

    move-result-wide v7

    .line 547
    .local v7, modifyDate:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object v4, v0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/miui/milk/source/note/NoteManager;->exists(JJI)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object v4, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/miui/milk/source/note/NoteManager;->loadNoteEntityByDate(JJ)Lcom/miui/milk/model/NoteProtos$NoteEntity;

    move-result-object v14

    .line 549
    .local v14, existNote:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object v4, v0

    invoke-virtual {v14}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getLuid()Ljava/lang/String;

    move-result-object v5

    .end local v5           #createDate:J
    const/4 v6, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getGuid()Ljava/lang/String;

    move-result-object v7

    .end local v7           #modifyDate:J
    invoke-virtual {v4, v5, v6, v7}, Lcom/miui/milk/source/note/NoteTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 554
    .end local v14           #existNote:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :goto_2
    add-int/lit8 v21, v21, 0x1

    .line 555
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    mul-int/lit8 v6, v21, 0x64

    div-int v6, v6, v30

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "100"

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    .line 559
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 551
    .restart local v5       #createDate:J
    .restart local v7       #modifyDate:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteManager:Lcom/miui/milk/source/note/NoteManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/milk/source/note/NoteManager;->addNoteEntity(Lcom/miui/milk/model/NoteProtos$NoteEntity;)J

    move-result-wide v18

    .line 552
    .restart local v18       #newLuid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    move-object v4, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .end local v5           #createDate:J
    const/4 v6, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/NoteProtos$NoteEntity;->getGuid()Ljava/lang/String;

    move-result-object v7

    .end local v7           #modifyDate:J
    invoke-virtual {v4, v5, v6, v7}, Lcom/miui/milk/source/note/NoteTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 564
    .end local v18           #newLuid:J
    .end local v20           #note:Lcom/miui/milk/model/NoteProtos$NoteEntity;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/NoteCloudController;->closeStore()V

    .line 565
    const-string v4, "NoteCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Import Folder Counts : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v4, "NoteCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Import Note Counts : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "100"

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_a

    .line 568
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 571
    :cond_a
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "SUCCESS"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    .line 572
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 577
    .end local v16           #folderCount:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v21           #noteCount:I
    .end local v30           #totalCount:I
    :cond_b
    if-eqz v33, :cond_4

    .line 578
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 579
    .local v25, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "restore_watermark_note"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 580
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 581
    const-string v4, "NoteCloudController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new waterMark : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 590
    .end local v12           #entity:Lorg/apache/http/HttpEntity;
    .end local v22           #notes:Lcom/miui/milk/model/NoteProtos$Notes;
    .end local v23           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v27           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v28           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v31           #waterMark:Ljava/lang/String;
    .end local v32           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v33           #waterMarkNew:Ljava/lang/String;
    .restart local v10       #e:Ljava/lang/Exception;
    :cond_c
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v26

    .line 591
    .local v26, statusCode:I
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "EXCEPTION"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 13
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 59
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteFolderTracker;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteFolderTracker;->prepareChangeItems()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->prepareChangeItems()V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, n_new:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 68
    .local v12, n_update:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 70
    .local v10, n_delete:Ljava/lang/String;
    const/4 v3, 0x0

    .line 71
    .local v3, totalCount:I
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 72
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 73
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->getDeletedItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 75
    div-int/lit16 v7, v3, 0xfa

    .line 76
    .local v7, batches:I
    mul-int/lit16 v0, v7, 0xfa

    if-le v3, v0, :cond_2

    .line 77
    add-int/lit8 v7, v7, 0x1

    .line 80
    :cond_2
    mul-int/lit8 v0, v7, 0xa

    add-int v6, v3, v0

    .line 81
    .local v6, totalTime:I
    const/4 v5, 0x0

    .line 84
    .local v5, batchCount:I
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-eqz v0, :cond_4

    .line 117
    :cond_3
    :goto_0
    return-void

    .line 85
    :cond_4
    invoke-direct {p0, p1, v3, p2}, Lcom/miui/milk/control/cloud/NoteCloudController;->saveFolderBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;ILandroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 93
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-nez v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 94
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/control/cloud/NoteCloudController;->saveNotePerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    add-int/lit16 v2, v2, 0xfa

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 86
    .end local v2           #i:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 87
    .local v9, e1:Ljava/lang/Exception;
    const-string v0, "NoteCloudController"

    const-string v1, "Cannot save note folder "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 95
    .end local v9           #e1:Ljava/lang/Exception;
    .restart local v2       #i:I
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 96
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "NoteCloudController"

    const-string v1, "Cannot save note batch "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 101
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-nez v0, :cond_3

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #i:I
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "100"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto :goto_0

    .line 108
    :cond_6
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v11, v0, v1

    const/4 v1, 0x2

    aput-object v12, v0, v1

    const/4 v1, 0x3

    aput-object v10, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto :goto_0

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteFolderTracker:Lcom/miui/milk/source/note/NoteFolderTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteFolderTracker;->removeDeletedItemKeys()V

    .line 115
    iget-object v0, p0, Lcom/miui/milk/control/cloud/NoteCloudController;->mNoteTracker:Lcom/miui/milk/source/note/NoteTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/note/NoteTracker;->removeDeletedItemKeys()V

    goto/16 :goto_0
.end method
