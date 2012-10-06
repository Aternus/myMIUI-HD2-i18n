.class public Lcom/miui/milk/control/cloud/SmsCloudController;
.super Lcom/miui/milk/control/cloud/BaseCloudController;
.source "SmsCloudController.java"


# instance fields
.field private mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

.field private mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/milk/storage/SmsTrackerStore;Lcom/miui/milk/storage/SmsBookmarkTrackerStore;)V
    .locals 1
    .parameter "context"
    .parameter "sTrackerStore"
    .parameter "sbTrackerStore"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/BaseCloudController;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lcom/miui/milk/source/sms/SmsManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/sms/SmsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    .line 36
    new-instance v0, Lcom/miui/milk/source/sms/SmsTracker;

    invoke-direct {v0, p1, p2}, Lcom/miui/milk/source/sms/SmsTracker;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/SmsTrackerStore;)V

    iput-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    .line 37
    return-void
.end method

.method private checkEmpty()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->resetStore()V

    .line 359
    :cond_0
    return-void
.end method

.method private closeStore()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->closeStore()V

    .line 367
    return-void
.end method

.method private openStore()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->openStore()V

    .line 363
    return-void
.end method

.method private processAfterSave(Lcom/miui/milk/model/SmsProtos$MmsSms;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    .locals 9
    .parameter "smsPool"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v5, "someting error from server, sms without luid"

    const-string v5, "someting error from server, sms without guid"

    const-string v8, "SmsCloudController"

    .line 234
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->openStore()V

    .line 235
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/SmsProtos$Sms;

    .line 237
    .local v4, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    :try_start_0
    invoke-virtual {v4}, Lcom/miui/milk/model/SmsProtos$Sms;->getLuid()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, luid:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/miui/milk/model/SmsProtos$Sms;->getGuid()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, guid:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    const-string v5, "SmsCloudController"

    const-string v6, "someting error from server, sms without luid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "someting error from server, sms without luid"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v1           #guid:Ljava/lang/String;
    .end local v3           #luid:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 252
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SmsCloudController"

    const-string v5, "Cannot process after save sms "

    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->closeStore()V

    .line 254
    throw v0

    .line 243
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #guid:Ljava/lang/String;
    .restart local v3       #luid:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/miui/milk/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 244
    :cond_1
    const-string v5, "SmsCloudController"

    const-string v6, "someting error from server, sms without guid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "someting error from server, sms without guid"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 247
    :cond_2
    iget-object v5, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v1}, Lcom/miui/milk/source/sms/SmsTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 248
    const-string v5, "SmsCloudController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save sms guid/luid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 258
    .end local v1           #guid:Ljava/lang/String;
    .end local v3           #luid:Ljava/lang/String;
    .end local v4           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    :cond_3
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->closeStore()V

    .line 259
    return-void
.end method

.method private saveSmsPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
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
    .line 100
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/SmsCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 102
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->newBuilder()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v17

    .line 104
    .local v17, smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;
    const/4 v15, 0x0

    .line 109
    .local v15, smsCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 110
    move v0, v7

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v22, v0

    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 113
    .local v16, smsId:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    move-object/from16 v22, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/miui/milk/source/sms/SmsManager;->load(J)Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v14

    .line 114
    .local v14, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    if-eqz v14, :cond_1

    .line 115
    invoke-virtual {v14}, Lcom/miui/milk/model/SmsProtos$Sms;->toBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v12

    .line 116
    .local v12, sb:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    sget-object v22, Lcom/miui/milk/model/CommonProtos$ActionType;->NEW:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->build()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v14

    .line 117
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->addSms(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    .line 118
    add-int/lit8 v15, v15, 0x1

    .line 119
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v15

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

    add-int v24, v24, v15

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

    .line 124
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v12           #sb:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .end local v14           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    .end local v16           #smsId:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 128
    .restart local v16       #smsId:Ljava/lang/String;
    :catch_0
    move-exception v22

    move-object/from16 v4, v22

    .line 129
    .local v4, e:Ljava/lang/Exception;
    const-string v22, "SmsCloudController"

    const-string v23, "Cannot load sms "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v4           #e:Ljava/lang/Exception;
    .end local v16           #smsId:Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 135
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 136
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/milk/source/sms/SmsTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int v22, v22, v23

    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 138
    move v0, v7

    move/from16 v1, p2

    if-lt v0, v1, :cond_4

    move/from16 v0, p2

    add-int/lit16 v0, v0, 0xfa

    move/from16 v22, v0

    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v8, v7, v22

    .line 140
    .local v8, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/source/sms/SmsTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 142
    .restart local v16       #smsId:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    move-object/from16 v22, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Lcom/miui/milk/source/sms/SmsManager;->load(J)Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v14

    .line 143
    .restart local v14       #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    if-eqz v14, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v22, v0

    invoke-virtual {v14}, Lcom/miui/milk/model/SmsProtos$Sms;->getLuid()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/miui/milk/source/sms/SmsTracker;->getGuidByLuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, guid:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/miui/milk/model/SmsProtos$Sms;->toBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v12

    .line 146
    .restart local v12       #sb:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    if-eqz v6, :cond_3

    .line 147
    invoke-virtual {v12, v6}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setGuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 149
    :cond_3
    sget-object v22, Lcom/miui/milk/model/CommonProtos$ActionType;->UPDATE:Lcom/miui/milk/model/CommonProtos$ActionType;

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setActionType(Lcom/miui/milk/model/CommonProtos$ActionType;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->build()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v14

    .line 150
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->addSms(Lcom/miui/milk/model/SmsProtos$Sms;)Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    .line 151
    add-int/lit8 v15, v15, 0x1

    .line 152
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v15

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

    add-int v24, v24, v15

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

    .line 157
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 161
    .end local v6           #guid:Ljava/lang/String;
    .end local v12           #sb:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    .end local v14           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    :catch_1
    move-exception v22

    move-object/from16 v4, v22

    .line 162
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v22, "SmsCloudController"

    const-string v23, "Cannot load sms "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #index:I
    .end local v16           #smsId:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 167
    :cond_5
    const-string v22, "SmsCloudController"

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

    .line 168
    const-string v22, "SmsCloudController"

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

    .line 170
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->getSmsList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->getSmsBookmarkList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_6

    .line 171
    const-string v22, "SmsCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Export Sms Counts : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 175
    :cond_6
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v19

    .line 176
    .local v19, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->getSyncVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 179
    if-eqz v19, :cond_0

    .line 180
    const/4 v11, 0x0

    .line 182
    .local v11, response:Lorg/apache/http/HttpResponse;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v9

    .line 184
    .local v9, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v15

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

    add-int v24, v24, v15

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

    .line 188
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 225
    .end local v9           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v22

    move-object/from16 v4, v22

    .line 226
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v22, "SmsCloudController"

    const-string v23, "Cannot send sms "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/SmsCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    .line 228
    throw v4

    .line 192
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v9       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->getSyncSaveUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 193
    const-string v22, "SmsCloudController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Export Sms Counts : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/SmsCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 196
    if-eqz v11, :cond_a

    .line 198
    const-string v22, "M_WATERMARK"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v21

    .line 199
    .local v21, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v20, 0x0

    .line 200
    .local v20, waterMark:Ljava/lang/String;
    if-eqz v21, :cond_8

    .line 201
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 203
    :cond_8
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 204
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v18

    .line 205
    .local v18, syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v18 .. v18}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsSms()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v10

    .line 206
    .local v10, respSms:Lcom/miui/milk/model/SmsProtos$MmsSms;
    if-eqz v10, :cond_9

    .line 207
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/milk/control/cloud/SmsCloudController;->processAfterSave(Lcom/miui/milk/model/SmsProtos$MmsSms;Lcom/miui/milk/control/callback/AsyncTaskCallback;)V

    .line 210
    :cond_9
    if-eqz v20, :cond_a

    .line 211
    invoke-interface/range {p4 .. p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 212
    .local v13, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v22, "watermark_sms"

    move-object v0, v13

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    const-string v22, "SmsCloudController"

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

    .line 218
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v10           #respSms:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v13           #sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v18           #syncResp:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v20           #waterMark:Ljava/lang/String;
    .end local v21           #waterMarkHeader:Lorg/apache/http/Header;
    :cond_a
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, p2, v15

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

    add-int v24, v24, v15

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

    .line 222
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1
.end method


# virtual methods
.method public calculateSyncSize()I
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->checkEmpty()V

    .line 43
    iget-object v1, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/sms/SmsTracker;->prepareChangeItems()V

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, totalCount:I
    iget-object v1, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    iget-object v1, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v1}, Lcom/miui/milk/source/sms/SmsTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    return v0
.end method

.method public clearPrepared()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->clearPrepared()V

    .line 372
    return-void
.end method

.method public read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V
    .locals 30
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 263
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 265
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/control/cloud/SmsCloudController;->tryPing(Lcom/miui/milk/control/callback/AsyncTaskCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->checkEmpty()V

    .line 272
    const-string v26, "SmsCloudController"

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

    .line 273
    const-string v26, "SmsCloudController"

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

    .line 274
    const/4 v15, 0x0

    .line 276
    .local v15, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->prepareTransportParams()Ljava/util/HashMap;

    move-result-object v14

    .line 278
    .local v14, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "restore_watermark_sms"

    const-string v27, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 279
    .local v23, waterMark:Ljava/lang/String;
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_0

    .line 280
    const-string v26, "M_WATERMARK_ORIGINAL"

    move-object v0, v14

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v20

    .line 284
    .local v20, syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$MmsSms;->newBuilder()Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/miui/milk/model/SmsProtos$MmsSms$Builder;->build()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setMmsSms(Lcom/miui/milk/model/SmsProtos$MmsSms;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/BaseCloudController;->mTransport:Lcom/miui/milk/transport/HttpTransport;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->getSyncReadUrl()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/transport/HttpTransport;->sendRequest(Ljava/lang/String;Lcom/miui/milk/model/SyncRootProtos$SyncRoot;Ljava/util/HashMap;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 287
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/cloud/SmsCloudController;->checkResponseStatus(Lorg/apache/http/HttpResponse;)V

    .line 288
    if-eqz v15, :cond_3

    .line 290
    const-string v26, "M_WATERMARK"

    move-object v0, v15

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v24

    .line 291
    .local v24, waterMarkHeader:Lorg/apache/http/Header;
    const/16 v25, 0x0

    .line 292
    .local v25, waterMarkNew:Ljava/lang/String;
    if-eqz v24, :cond_1

    .line 293
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v25

    .line 296
    :cond_1
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 297
    .local v9, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom([B)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v21

    .line 299
    .local v21, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    invoke-virtual/range {v21 .. v21}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getMmsSms()Lcom/miui/milk/model/SmsProtos$MmsSms;

    move-result-object v19

    .line 300
    .local v19, smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    if-eqz v19, :cond_7

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->openStore()V

    .line 302
    const/16 v18, 0x0

    .line 303
    .local v18, smsCount:I
    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsList()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsBookmarkList()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    add-int v22, v26, v27

    .line 305
    .local v22, totalCount:I
    invoke-virtual/range {v19 .. v19}, Lcom/miui/milk/model/SmsProtos$MmsSms;->getSmsList()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/miui/milk/model/SmsProtos$Sms;

    .line 306
    .local v17, sms:Lcom/miui/milk/model/SmsProtos$Sms;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SmsProtos$Sms;->getDate()J

    move-result-wide v5

    .line 307
    .local v5, date:J
    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide v1, v5

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/source/sms/SmsManager;->exists(JLjava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide v1, v5

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/milk/source/sms/SmsManager;->load(JLjava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v10

    .line 310
    .local v10, existSms:Lcom/miui/milk/model/SmsProtos$Sms;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v26, v0

    invoke-virtual {v10}, Lcom/miui/milk/model/SmsProtos$Sms;->getLuid()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SmsProtos$Sms;->getGuid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v26 .. v29}, Lcom/miui/milk/source/sms/SmsTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V

    .line 315
    .end local v10           #existSms:Lcom/miui/milk/model/SmsProtos$Sms;
    :goto_0
    add-int/lit8 v18, v18, 0x1

    .line 316
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move/from16 v1, v18

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

    mul-int/lit8 v28, v18, 0x64

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

    .line 320
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 349
    .end local v4           #address:Ljava/lang/String;
    .end local v5           #date:J
    .end local v9           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    .end local v18           #smsCount:I
    .end local v19           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v20           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v21           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v22           #totalCount:I
    .end local v23           #waterMark:Ljava/lang/String;
    .end local v24           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v25           #waterMarkNew:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 266
    :catch_0
    move-exception v8

    .line 267
    .local v8, e1:Ljava/lang/Exception;
    goto :goto_1

    .line 312
    .end local v8           #e1:Ljava/lang/Exception;
    .restart local v4       #address:Ljava/lang/String;
    .restart local v5       #date:J
    .restart local v9       #entity:Lorg/apache/http/HttpEntity;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v14       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    .restart local v18       #smsCount:I
    .restart local v19       #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .restart local v20       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v21       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v22       #totalCount:I
    .restart local v23       #waterMark:Ljava/lang/String;
    .restart local v24       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v25       #waterMarkNew:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsManager:Lcom/miui/milk/source/sms/SmsManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miui/milk/source/sms/SmsManager;->add(Lcom/miui/milk/model/SmsProtos$Sms;)J

    move-result-wide v12

    .line 313
    .local v12, newLuid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    move-object/from16 v26, v0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/miui/milk/model/SmsProtos$Sms;->getGuid()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v26 .. v29}, Lcom/miui/milk/source/sms/SmsTracker;->setTrackerStatus(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 345
    .end local v4           #address:Ljava/lang/String;
    .end local v5           #date:J
    .end local v9           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #newLuid:J
    .end local v14           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17           #sms:Lcom/miui/milk/model/SmsProtos$Sms;
    .end local v18           #smsCount:I
    .end local v19           #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .end local v20           #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .end local v21           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v22           #totalCount:I
    .end local v23           #waterMark:Ljava/lang/String;
    .end local v24           #waterMarkHeader:Lorg/apache/http/Header;
    .end local v25           #waterMarkNew:Ljava/lang/String;
    :catch_1
    move-exception v26

    move-object/from16 v7, v26

    .line 346
    .local v7, e:Ljava/lang/Exception;
    const-string v26, "SmsCloudController"

    const-string v27, "Cannot read sms "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/control/cloud/SmsCloudController;->makeExceptionCallback(Lcom/miui/milk/control/callback/AsyncTaskCallback;Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    .line 325
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v9       #entity:Lorg/apache/http/HttpEntity;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v14       #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18       #smsCount:I
    .restart local v19       #smsPool:Lcom/miui/milk/model/SmsProtos$MmsSms;
    .restart local v20       #syncreq:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    .restart local v21       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v22       #totalCount:I
    .restart local v23       #waterMark:Ljava/lang/String;
    .restart local v24       #waterMarkHeader:Lorg/apache/http/Header;
    .restart local v25       #waterMarkNew:Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->closeStore()V

    .line 326
    const-string v26, "SmsCloudController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Import Sms Counts : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
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

    .line 328
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 331
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

    .line 332
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto/16 :goto_1

    .line 337
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v18           #smsCount:I
    .end local v22           #totalCount:I
    :cond_7
    if-eqz v25, :cond_3

    .line 338
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 339
    .local v16, sharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v26, "restore_watermark_sms"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 340
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    const-string v26, "SmsCloudController"

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
    .locals 11
    .parameter "callback"
    .parameter "sharedPref"

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    .line 54
    invoke-direct {p0}, Lcom/miui/milk/control/cloud/SmsCloudController;->checkEmpty()V

    .line 56
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->prepareChangeItems()V

    .line 58
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, s_new:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, s_update:Ljava/lang/String;
    const/4 v3, 0x0

    .line 62
    .local v3, totalCount:I
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->getNewItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 63
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->getUpdatedItemKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 65
    div-int/lit16 v7, v3, 0xfa

    .line 66
    .local v7, batches:I
    mul-int/lit16 v0, v7, 0xfa

    if-le v3, v0, :cond_0

    .line 67
    add-int/lit8 v7, v7, 0x1

    .line 70
    :cond_0
    mul-int/lit8 v0, v7, 0xa

    add-int v6, v3, v0

    .line 71
    .local v6, totalTime:I
    const/4 v5, 0x0

    .line 73
    .local v5, batchCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-eqz v0, :cond_2

    .line 97
    .end local v2           #i:I
    :cond_1
    :goto_1
    return-void

    .restart local v2       #i:I
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/control/cloud/SmsCloudController;->saveSmsPerBatch(Lcom/miui/milk/control/callback/AsyncTaskCallback;IILandroid/content/SharedPreferences;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    add-int/lit16 v2, v2, 0xfa

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 78
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "SmsCloudController"

    const-string v1, "Cannot save sms batch "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 83
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    iget-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    if-nez v0, :cond_1

    .line 85
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

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto :goto_1

    .line 89
    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "0"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/miui/milk/control/callback/AsyncTaskCallback;->run([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/cloud/BaseCloudController;->mCanceled:Z

    goto :goto_1

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/miui/milk/control/cloud/SmsCloudController;->mSmsTracker:Lcom/miui/milk/source/sms/SmsTracker;

    invoke-virtual {v0}, Lcom/miui/milk/source/sms/SmsTracker;->removeDeletedItemKeys()V

    goto :goto_1
.end method
