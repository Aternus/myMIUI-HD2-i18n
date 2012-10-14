.class public Lcom/android/providers/downloads/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# instance fields
.field mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    return-void
.end method

.method private handleNotificationBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const-string v5, "android.intent.action.DOWNLOAD_OPEN"

    const-string v3, "android.intent.action.DOWNLOAD_LIST"

    const-string v4, "DownloadManager"

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 74
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, action:Ljava/lang/String;
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "android.intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "DownloadManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver open for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 86
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_3

    .line 105
    :goto_1
    return-void

    .line 78
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "android.intent.action.DOWNLOAD_LIST"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    const-string v0, "DownloadManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver list for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_2
    const-string v0, "DownloadManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver hide for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 94
    :cond_4
    :try_start_1
    const-string v0, "android.intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    invoke-direct {p0, p1, v7}, Lcom/android/providers/downloads/DownloadReceiver;->openDownload(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 96
    invoke-direct {p0, p1, v1, v7}, Lcom/android/providers/downloads/DownloadReceiver;->hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 97
    :cond_5
    :try_start_2
    const-string v0, "android.intent.action.DOWNLOAD_LIST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    invoke-direct {p0, p1, p2, v7}, Lcom/android/providers/downloads/DownloadReceiver;->sendNotificationClickedIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 103
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 100
    :cond_6
    :try_start_3
    invoke-direct {p0, p1, v1, v7}, Lcom/android/providers/downloads/DownloadReceiver;->hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    const-string v9, "visibility"

    .line 113
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    .line 115
    const-string v5, "status"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 116
    .local v1, statusColumn:I
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 117
    .local v0, status:I
    const-string v5, "visibility"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 119
    .local v4, visibilityColumn:I
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 120
    .local v3, visibility:I
    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 122
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "visibility"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p2, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private openDownload(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 134
    const-string v5, "_data"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, filename:Ljava/lang/String;
    const-string v5, "mimetype"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, mimetype:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 139
    .local v4, path:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 140
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 143
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, activityIntent:Landroid/content/Intent;
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no activity for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendNotificationClickedIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/database/Cursor;)V
    .locals 12
    .parameter "context"
    .parameter "intent"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    const-string v11, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    .line 159
    const-string v9, "notificationpackage"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, pckg:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v9, "notificationclass"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, clazz:Ljava/lang/String;
    const-string v9, "is_public_api"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_3

    move v5, v10

    .line 170
    .local v5, isPublicApi:Z
    :goto_1
    const/4 v0, 0x0

    .line 171
    .local v0, appIntent:Landroid/content/Intent;
    if-eqz v5, :cond_4

    .line 172
    new-instance v0, Landroid/content/Intent;

    .end local v0           #appIntent:Landroid/content/Intent;
    const-string v9, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v0       #appIntent:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v10

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 175
    .local v8, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 177
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v6, pageView:Landroid/content/Intent;
    const-string v9, "intent_extra_application_packagename"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const/high16 v9, 0x1000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    .end local v0           #appIntent:Landroid/content/Intent;
    .end local v5           #isPublicApi:Z
    .end local v6           #pageView:Landroid/content/Intent;
    .end local v8           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/4 v9, 0x0

    move v5, v9

    goto :goto_1

    .line 184
    .restart local v0       #appIntent:Landroid/content/Intent;
    .restart local v5       #isPublicApi:Z
    :cond_4
    if-eqz v1, :cond_0

    .line 187
    new-instance v0, Landroid/content/Intent;

    .end local v0           #appIntent:Landroid/content/Intent;
    const-string v9, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v0       #appIntent:Landroid/content/Intent;
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v9, "_id"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 190
    .local v3, downloadId:J
    sget-object v9, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 191
    .local v2, dataUri:Landroid/net/Uri;
    const-string v9, "multiple"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 192
    sget-object v9, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    const-string v9, "data_uri"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v3           #downloadId:J
    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v9, v0}, Lcom/android/providers/downloads/SystemFacade;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 195
    .restart local v2       #dataUri:Landroid/net/Uri;
    .restart local v3       #downloadId:J
    :cond_6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private startService(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 204
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    if-nez v2, :cond_0

    .line 48
    new-instance v2, Lcom/android/providers/downloads/RealSystemFacade;

    invoke-direct {v2, p1}, Lcom/android/providers/downloads/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/providers/downloads/DownloadReceiver;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 57
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_3
    const-string v2, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    .line 62
    :cond_4
    const-string v2, "android.intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.DOWNLOAD_LIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.DOWNLOAD_HIDE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadReceiver;->handleNotificationBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
