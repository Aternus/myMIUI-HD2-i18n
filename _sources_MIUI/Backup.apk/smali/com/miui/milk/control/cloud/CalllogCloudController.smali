.class public Lcom/miui/milk/control/cloud/CalllogCloudController;
.super Lcom/miui/milk/control/cloud/BaseCloudController;
.source "CalllogCloudController.java"


# instance fields
.field private mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

.field private mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/CalllogTrackerStore;)V
    .locals 1
    .parameter "context"
    .parameter "trackerStore"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/BaseCloudController;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/miui/milk/source/calls2/CallsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/calls2/CallsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    .line 35
    new-instance v0, Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-direct {v0, p1, p2}, Lcom/miui/milk/source/calls2/CallsTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/CalllogTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    .line 36
    return-void
.end method

.method private checkEmpty()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->resetStore()V

    .line 313
    :cond_0
    return-void
.end method

.method private closeStore()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->closeStore()V

    .line 321
    return-void
.end method

.method private openStore()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->openStore()V

    .line 317
    return-void
.end method

.method private processAfterSave(Lcom/miui/milk/model/CalllogProtos2$Calllog;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    .locals 9
    .parameter "calllog"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v5, "someting error from server, call without luid"

    const-string v5, "someting error from server, call without guid"

    const-string v8, "CalllogCloudController"

    .line 191
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->openStore()V

    .line 192
    invoke-virtual {p1}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getCallList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/CalllogProtos2$Call;

    .line 194
    .local v0, call:Lcom/miui/milk/model/CalllogProtos2$Call;
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos2$Call;->getLuid()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, luid:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos2$Call;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, guid:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    const-string v5, "CalllogCloudController"

    const-string v6, "someting error from server, call without luid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "someting error from server, call without luid"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 209
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "CalllogCloudController"

    const-string v5, "Cannot process after save call "

    invoke-static {v8, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->closeStore()V

    .line 211
    throw v1

    .line 200
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #guid:Ljava/lang/String;
    .restart local v4       #luid:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 201
    :cond_1
    const-string v5, "CalllogCloudController"

    const-string v6, "someting error from server, call without guid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "someting error from server, call without guid"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    :cond_2
    iget-object v5, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v2}, Lcom/miui/milk/source/calls2/CallsTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 205
    const-string v5, "CalllogCloudController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save call guid/luid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 214
    .end local v0           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .end local v2           #guid:Ljava/lang/String;
    .end local v4           #luid:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->closeStore()V

    .line 215
    return-void
.end method

.method private saveCalllogPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    .locals 24
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
    .line 92
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/CalllogCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 94
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v7

    .line 95
    .local v7, calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;
    const/4 v5, 0x0

    .line 98
    .local v5, callCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/source/calls2/CallsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move v0, v11

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 99
    move v0, v11

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v20, v0

    move v0, v11

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/source/calls2/CallsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 102
    .local v6, callId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    move-object/from16 v20, v0

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Lcom/miui/milk/source/calls2/CallsManager;->load(J)Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v4

    .line 103
    .local v4, call:Lcom/miui/milk/model/CalllogProtos2$Call;
    if-eqz v4, :cond_1

    .line 104
    invoke-virtual {v4}, Lcom/miui/milk/model/CalllogProtos2$Call;->toBuilder()Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v8

    .line 105
    .local v8, cb:Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    sget-object v20, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/CalllogProtos2$Call$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/CalllogProtos2$Call$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v4

    .line 106
    invoke-virtual {v7, v4}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->addCall(Lcom/miui/milk/model/CalllogProtos2$Call;)Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 108
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    add-int v23, p2, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/miui/milk/common/Constants;->PROMPT_READING:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    mul-int/lit8 v22, p5, 0xa

    add-int v22, v22, p2

    add-int v22, v22, v5

    mul-int/lit8 v22, v22, 0x64

    div-int v22, v22, p6

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_1

    .line 113
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v4           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .end local v6           #callId:Ljava/lang/String;
    .end local v8           #cb:Lcom/miui/milk/model/CalllogProtos2$Call$Builder;
    :cond_0
    :goto_1
    return-void

    .line 117
    .restart local v6       #callId:Ljava/lang/String;
    :catch_0
    move-exception v20

    move-object/from16 v9, v20

    .line 118
    .local v9, e:Ljava/lang/Exception;
    const-string v20, "CalllogCloudController"

    const-string v21, "Cannot load calls "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v6           #callId:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 123
    :cond_2
    const-string v20, "CalllogCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "deviceId : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v20, "CalllogCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IMSI : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v7}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->getCallList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_3

    .line 127
    const-string v20, "CalllogCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Export Calllog Counts : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 131
    :cond_3
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v17

    .line 132
    .local v17, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setCalllog(Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 135
    if-eqz v17, :cond_0

    .line 136
    const/4 v14, 0x0

    .line 138
    .local v14, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v12

    .line 140
    .local v12, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    add-int v23, p2, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    mul-int/lit8 v22, p5, 0xa

    add-int v22, v22, p2

    add-int v22, v22, v5

    mul-int/lit8 v22, v22, 0x64

    div-int v22, v22, p6

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_4

    .line 144
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 182
    .end local v12           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v20

    move-object/from16 v9, v20

    .line 183
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v20, "CalllogCloudController"

    const-string v21, "Cannot send call "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/CalllogCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 185
    throw v9

    .line 148
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v12       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 149
    const-string v20, "CalllogCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Export Calllog Counts : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/CalllogCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 152
    if-eqz v14, :cond_7

    .line 154
    const-string v20, "M_WATERMARK"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v19

    .line 155
    .local v19, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v18, 0x0

    .line 156
    .local v18, waterMark:Ljava/lang/String;
    if-eqz v19, :cond_5

    .line 157
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 159
    :cond_5
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 160
    .local v10, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v16

    .line 161
    .local v16, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getCalllog()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v13

    .line 162
    .local v13, respCalllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    if-eqz v13, :cond_6

    .line 163
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/CalllogCloudController;->processAfterSave(Lcom/miui/milk/model/CalllogProtos2$Calllog;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 166
    :cond_6
    if-eqz v18, :cond_7

    .line 167
    invoke-interface/range {p4 .. p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 168
    .local v15, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "watermark_calllog"

    move-object v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    const-string v20, "CalllogCloudController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "get waterMark : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v10           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #respCalllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v15           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v16           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v18           #waterMark:Ljava/lang/String;
    .end local v19           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_7
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    add-int v23, p2, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/miui/milk/common/Constants;->PROMPT_SENDING:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    mul-int/lit8 v22, p5, 0xa

    add-int v22, v22, p2

    add-int v22, v22, v5

    add-int/lit8 v22, v22, 0xa

    mul-int/lit8 v22, v22, 0x64

    div-int v22, v22, p6

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "100"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_0

    .line 179
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method


# virtual methods
.method public calculateSyncSize()I
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->checkEmpty()V

    .line 41
    iget-object v1, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/calls2/CallsTracker;->prepareChangeItems()V

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, totalCount:I
    iget-object v1, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/calls2/CallsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    return v0
.end method

.method public clearPrepared()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->clearPrepared()V

    .line 326
    return-void
.end method

.method public read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 30
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 219
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 221
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/CalllogCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->checkEmpty()V

    .line 228
    const-string v26, "CalllogCloudController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "deviceId : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mDeviceId:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v26, "CalllogCloudController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "IMSI : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mIMSI:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v18, 0x0

    .line 232
    .local v18, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v17

    .line 234
    .local v17, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "restore_watermark_calllog"

    const-string v27, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 235
    .local v23, waterMark:Ljava/lang/String;
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_0

    .line 236
    const-string v26, "M_WATERMARK_ORIGINAL"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v20

    .line 240
    .local v20, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->newBuilder()Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/miui/milk/model/CalllogProtos2$Calllog$Builder;->build()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setCalllog(Lcom/miui/milk/model/CalllogProtos2$Calllog;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/CalllogCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 244
    if-eqz v18, :cond_3

    .line 246
    const-string v26, "M_WATERMARK"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v24

    .line 247
    .local v24, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v25, 0x0

    .line 248
    .local v25, waterMarkNew:Ljava/lang/String;
    if-eqz v24, :cond_1

    .line 249
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v25

    .line 252
    :cond_1
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 253
    .local v11, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v11}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v21

    .line 255
    .local v21, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getCalllog()Lcom/miui/milk/model/CalllogProtos2$Calllog;

    move-result-object v6

    .line 256
    .local v6, calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    if-eqz v6, :cond_7

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->openStore()V

    .line 258
    const/4 v5, 0x0

    .line 259
    .local v5, callCount:I
    invoke-virtual {v6}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getCallList()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v22

    .line 260
    .local v22, totalCount:I
    invoke-virtual {v6}, Lcom/miui/milk/model/CalllogProtos2$Calllog;->getCallList()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/CalllogProtos2$Call;

    .line 261
    .local v4, call:Lcom/miui/milk/model/CalllogProtos2$Call;
    invoke-virtual {v4}, Lcom/miui/milk/model/CalllogProtos2$Call;->getDate()J

    move-result-wide v7

    .line 262
    .local v7, date:J
    invoke-virtual {v4}, Lcom/miui/milk/model/CalllogProtos2$Call;->getNumber()Ljava/lang/String;

    move-result-object v16

    .line 263
    .local v16, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide v1, v7

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/source/calls2/CallsManager;->exists(JLjava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide v1, v7

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/source/calls2/CallsManager;->load(JLjava/lang/String;)Lcom/miui/milk/model/CalllogProtos2$Call;

    move-result-object v12

    .line 265
    .local v12, existCall:Lcom/miui/milk/model/CalllogProtos2$Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    move-object/from16 v26, v0

    invoke-virtual {v12}, Lcom/miui/milk/model/CalllogProtos2$Call;->getLuid()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual {v4}, Lcom/miui/milk/model/CalllogProtos2$Call;->getGuid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v26 .. v29}, Lcom/miui/milk/source/calls2/CallsTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 270
    .end local v12           #existCall:Lcom/miui/milk/model/CalllogProtos2$Call;
    :goto_0
    add-int/lit8 v5, v5, 0x1

    .line 271
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/miui/milk/common/Constants;->PROMPT_WRITING:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    mul-int/lit8 v28, v5, 0x64

    div-int v28, v28, v22

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "100"

    aput-object v28, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_2

    .line 275
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 303
    .end local v4           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .end local v5           #callCount:I
    .end local v6           #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v7           #date:J
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #number:Ljava/lang/String;
    .end local v17           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v20           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v21           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v22           #totalCount:I
    .end local v23           #waterMark:Ljava/lang/String;
    .end local v24           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v25           #waterMarkNew:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 222
    :catch_0
    move-exception v10

    .line 223
    .local v10, e1:Ljava/lang/Exception;
    goto :goto_1

    .line 267
    .end local v10           #e1:Ljava/lang/Exception;
    .restart local v4       #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .restart local v5       #callCount:I
    .restart local v6       #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .restart local v7       #date:J
    .restart local v11       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v16       #number:Ljava/lang/String;
    .restart local v17       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v20       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v21       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v22       #totalCount:I
    .restart local v23       #waterMark:Ljava/lang/String;
    .restart local v24       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v25       #waterMarkNew:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsManager:Lcom/miui/milk/source/calls2/CallsManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/milk/source/calls2/CallsManager;->add(Lcom/miui/milk/model/CalllogProtos2$Call;)J

    move-result-wide v14

    .line 268
    .local v14, newLuid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    move-object/from16 v26, v0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual {v4}, Lcom/miui/milk/model/CalllogProtos2$Call;->getGuid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v26 .. v29}, Lcom/miui/milk/source/calls2/CallsTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 299
    .end local v4           #call:Lcom/miui/milk/model/CalllogProtos2$Call;
    .end local v5           #callCount:I
    .end local v6           #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .end local v7           #date:J
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #newLuid:J
    .end local v16           #number:Ljava/lang/String;
    .end local v17           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v21           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v22           #totalCount:I
    .end local v23           #waterMark:Ljava/lang/String;
    .end local v24           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v25           #waterMarkNew:Ljava/lang/String;
    :catch_1
    move-exception v26

    move-object/from16 v9, v26

    .line 300
    .local v9, e:Ljava/lang/Exception;
    const-string v26, "CalllogCloudController"

    const-string v27, "Cannot read call "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/CalllogCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    .line 279
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v5       #callCount:I
    .restart local v6       #calllog:Lcom/miui/milk/model/CalllogProtos2$Calllog;
    .restart local v11       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v17       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v21       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v22       #totalCount:I
    .restart local v23       #waterMark:Ljava/lang/String;
    .restart local v24       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v25       #waterMarkNew:Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->closeStore()V

    .line 280
    const-string v26, "CalllogCloudController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Import Call Counts : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, ""

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x64

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "100"

    aput-object v28, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_6

    .line 282
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 285
    :cond_6
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string v28, "SUCCESS"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_7

    .line 286
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 291
    .end local v5           #callCount:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v22           #totalCount:I
    :cond_7
    if-eqz v25, :cond_3

    .line 292
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 293
    .local v19, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v26, "restore_watermark_calllog"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    const-string v26, "CalllogCloudController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "new waterMark : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 10
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 50
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/CalllogCloudController;->checkEmpty()V

    .line 52
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->prepareChangeItems()V

    .line 53
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, c_new:Ljava/lang/String;
    const/4 v3, 0x0

    .line 55
    .local v3, totalCount:I
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 57
    div-int/lit16 v7, v3, 0xfa

    .line 58
    .local v7, batches:I
    mul-int/lit16 v0, v7, 0xfa

    if-le v3, v0, :cond_0

    .line 59
    add-int/lit8 v7, v7, 0x1

    .line 62
    :cond_0
    mul-int/lit8 v0, v7, 0xa

    add-int v6, v3, v0

    .line 63
    .local v6, totalTime:I
    const/4 v5, 0x0

    .line 65
    .local v5, batchCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-eqz v0, :cond_2

    .line 89
    .end local v2           #i:I
    :cond_1
    :goto_1
    return-void

    .restart local v2       #i:I
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 68
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/control/cloud/CalllogCloudController;->saveCalllogPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    add-int/lit16 v2, v2, 0xfa

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 70
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "CalllogCloudController"

    const-string v1, "Cannot save calllog batch "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 75
    .end local v9           #e:Ljava/lang/Exception;
    :cond_3
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-nez v0, :cond_1

    .line 77
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

    if-nez v0, :cond_4

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto :goto_1

    .line 81
    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    const/4 v1, 0x2

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "0"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto :goto_1

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/miui/milk/control/cloud/CalllogCloudController;->mCallsTracker:Lcom/miui/milk/source/calls2/CallsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/calls2/CallsTracker;->removeDeletedItemKeys()V

    goto :goto_1
.end method
