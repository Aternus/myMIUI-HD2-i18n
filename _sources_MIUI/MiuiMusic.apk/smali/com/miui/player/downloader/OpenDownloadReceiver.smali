.class public Lcom/miui/player/downloader/OpenDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpenDownloadReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "_data"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "mimetype"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "status"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "entity"

    aput-object v7, v5, v6

    .line 36
    .local v5, cols:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 37
    .local v13, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 38
    .local v4, data:Landroid/net/Uri;
    const-string v6, "data_uri"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v31

    check-cast v31, Landroid/net/Uri;

    .line 39
    .local v31, trackUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 40
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 41
    .local v17, cursor:Landroid/database/Cursor;
    const/16 v30, 0x0

    .line 43
    .local v30, trackCursor:Landroid/database/Cursor;
    :try_start_0
    const-string v6, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 44
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 45
    const/4 v14, 0x1

    .line 46
    .local v14, allDownloadSuccess:Z
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 47
    const/4 v6, 0x3

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 48
    .local v27, status:I
    invoke-static/range {v27 .. v27}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 49
    const/4 v14, 0x0

    .line 54
    .end local v27           #status:I
    :cond_0
    if-eqz v14, :cond_9

    .line 55
    if-nez v31, :cond_8

    .line 56
    move-object/from16 v30, v17

    .line 60
    :goto_1
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    const/4 v6, 0x1

    move-object/from16 v0, v30

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 62
    .local v19, filename:Ljava/lang/String;
    const/4 v6, 0x2

    move-object/from16 v0, v30

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 63
    .local v23, mimetype:Ljava/lang/String;
    new-instance v22, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v22, launchIntent:Landroid/content/Intent;
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 66
    .local v25, path:Landroid/net/Uri;
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 67
    new-instance v6, Ljava/io/File;

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v25

    .line 69
    :cond_1
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/high16 v6, 0x1000

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .end local v14           #allDownloadSuccess:Z
    .end local v19           #filename:Ljava/lang/String;
    .end local v22           #launchIntent:Landroid/content/Intent;
    .end local v23           #mimetype:Ljava/lang/String;
    .end local v25           #path:Landroid/net/Uri;
    :cond_2
    :goto_2
    if-eqz v17, :cond_3

    .line 136
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_3
    if-eqz v30, :cond_4

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 140
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_4
    return-void

    .line 46
    .restart local v14       #allDownloadSuccess:Z
    .restart local v27       #status:I
    :cond_5
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 135
    .end local v14           #allDownloadSuccess:Z
    .end local v27           #status:I
    :catchall_0
    move-exception v6

    if-eqz v17, :cond_6

    .line 136
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_6
    if-eqz v30, :cond_7

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 140
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v6

    .line 58
    .restart local v14       #allDownloadSuccess:Z
    :cond_8
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    move-object/from16 v7, v31

    move-object v8, v5

    :try_start_3
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    goto :goto_1

    .line 73
    .restart local v19       #filename:Ljava/lang/String;
    .restart local v22       #launchIntent:Landroid/content/Intent;
    .restart local v23       #mimetype:Ljava/lang/String;
    .restart local v25       #path:Landroid/net/Uri;
    :catch_0
    move-exception v18

    .line 74
    .local v18, ex:Landroid/content/ActivityNotFoundException;
    const v6, 0x7f0800de

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 81
    .end local v18           #ex:Landroid/content/ActivityNotFoundException;
    .end local v19           #filename:Ljava/lang/String;
    .end local v22           #launchIntent:Landroid/content/Intent;
    .end local v23           #mimetype:Ljava/lang/String;
    .end local v25           #path:Landroid/net/Uri;
    :cond_9
    new-instance v24, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW_DOWNLOADS"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v24, pageView:Landroid/content/Intent;
    const/high16 v6, 0x1000

    move-object/from16 v0, v24

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    const-string v6, "intent_extra_application_packagename"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v24

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 89
    .end local v14           #allDownloadSuccess:Z
    .end local v24           #pageView:Landroid/content/Intent;
    :cond_a
    const-string v6, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    const-string v6, "notificationextras"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 91
    .local v9, details:Ljava/lang/String;
    const/16 v26, 0x0

    .line 93
    .local v26, retry:Z
    if-eqz v9, :cond_c

    .line 94
    :try_start_4
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v21, json:Lorg/json/JSONObject;
    const-string v6, "online_id"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, onlineId:Ljava/lang/String;
    const-string v6, "artist"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 97
    .local v15, artist:Ljava/lang/String;
    const-string v6, "track"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 98
    .local v29, track:Ljava/lang/String;
    move-object/from16 v0, v29

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/miui/player/helper/MusicMetaManager;->getMP3AppointName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, appointName:Ljava/lang/String;
    if-eqz v17, :cond_b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 101
    const/4 v6, 0x3

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 102
    .restart local v27       #status:I
    invoke-static/range {v27 .. v27}, Landroid/provider/Downloads;->isStatusSuccess(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 103
    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/OnlinePlayHelper;->correctId3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v27           #status:I
    :cond_b
    :goto_3
    if-nez v26, :cond_c

    .line 123
    invoke-static {v8}, Lcom/miui/player/downloader/DownloadInfoManager;->unregisterDownload(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 129
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v11           #appointName:Ljava/lang/String;
    .end local v15           #artist:Ljava/lang/String;
    .end local v21           #json:Lorg/json/JSONObject;
    .end local v29           #track:Ljava/lang/String;
    :cond_c
    :goto_4
    if-nez v26, :cond_2

    .line 130
    :try_start_5
    new-instance v20, Landroid/content/Intent;

    const-string v6, "com.miui.music.DOWNLOAD_COMPLETE"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v20, i:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 104
    .end local v20           #i:Landroid/content/Intent;
    .restart local v8       #onlineId:Ljava/lang/String;
    .restart local v11       #appointName:Ljava/lang/String;
    .restart local v15       #artist:Ljava/lang/String;
    .restart local v21       #json:Lorg/json/JSONObject;
    .restart local v27       #status:I
    .restart local v29       #track:Ljava/lang/String;
    :cond_d
    const/16 v6, 0x1ec

    move/from16 v0, v27

    move v1, v6

    if-eq v0, v1, :cond_b

    .line 105
    :try_start_6
    const-string v28, "music/mp3"

    .line 106
    .local v28, subDirectory:Ljava/lang/String;
    invoke-static {v8}, Lcom/miui/player/downloader/DownloadInfoManager;->getCandidates(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 107
    .local v16, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v16, :cond_b

    .line 108
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 109
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, "music/mp3"

    const/4 v6, 0x1

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v0, v16

    move v1, v6

    move v2, v12

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v12}, Lcom/miui/player/downloader/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 112
    const/16 v26, 0x1

    .line 113
    goto :goto_3

    .line 115
    :cond_e
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 126
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v11           #appointName:Ljava/lang/String;
    .end local v15           #artist:Ljava/lang/String;
    .end local v16           #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v21           #json:Lorg/json/JSONObject;
    .end local v27           #status:I
    .end local v28           #subDirectory:Ljava/lang/String;
    .end local v29           #track:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_4
.end method
