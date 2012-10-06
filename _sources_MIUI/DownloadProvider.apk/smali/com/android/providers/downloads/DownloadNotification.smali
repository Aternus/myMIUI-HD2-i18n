.class Lcom/android/providers/downloads/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadNotification$NotificationItem;,
        Lcom/android/providers/downloads/DownloadNotification$DownloadItem;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDownloadItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/DownloadNotification$DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field mDownloadNotificationWhens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/downloads/DownloadNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V
    .locals 1
    .parameter "ctx"
    .parameter "systemFacade"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadItems:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadNotificationWhens:Ljava/util/HashMap;

    .line 132
    return-void
.end method

.method private getDownloadingText(JJ)Ljava/lang/String;
    .locals 5
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 355
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    .line 356
    const-string v3, ""

    .line 362
    :goto_0
    return-object v3

    .line 358
    :cond_0
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p3

    div-long v0, v3, p1

    .line 359
    .local v0, progress:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 361
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 2
    .parameter "download"

    .prologue
    .line 342
    const/16 v0, 0x64

    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 3
    .parameter "download"

    .prologue
    const/4 v2, 0x1

    .line 347
    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private noteTraffic(JLjava/lang/String;J)V
    .locals 7
    .parameter "id"
    .parameter "packageName"
    .parameter "progress"

    .prologue
    .line 250
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 252
    .local v2, uid:I
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadItems:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadNotification$DownloadItem;

    .line 253
    .local v0, item:Lcom/android/providers/downloads/DownloadNotification$DownloadItem;
    if-nez v0, :cond_1

    .line 254
    const/4 v1, 0x0

    .line 256
    .local v1, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 260
    :goto_0
    if-eqz v1, :cond_0

    .line 261
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 263
    :cond_0
    new-instance v0, Lcom/android/providers/downloads/DownloadNotification$DownloadItem;

    .end local v0           #item:Lcom/android/providers/downloads/DownloadNotification$DownloadItem;
    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadNotification$DownloadItem;-><init>(Lcom/android/providers/downloads/DownloadNotification;)V

    .line 264
    .restart local v0       #item:Lcom/android/providers/downloads/DownloadNotification$DownloadItem;
    iput v2, v0, Lcom/android/providers/downloads/DownloadNotification$DownloadItem;->uid:I

    .line 265
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/providers/downloads/DownloadNotification$DownloadItem;->lastProgress:J

    .line 266
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadItems:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    iget v2, v0, Lcom/android/providers/downloads/DownloadNotification$DownloadItem;->uid:I

    .line 271
    :try_start_1
    invoke-static {}, Landroid/net/TrafficStats;->getService()Lcom/android/internal/app/ITraffic;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iget-wide v5, v0, Lcom/android/providers/downloads/DownloadNotification$DownloadItem;->lastProgress:J

    sub-long v5, p4, v5

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/android/internal/app/ITraffic;->noteRxBytes(IIJ)V

    .line 272
    iput-wide p4, v0, Lcom/android/providers/downloads/DownloadNotification$DownloadItem;->lastProgress:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    :goto_1
    return-void

    .line 273
    :catch_0
    move-exception v3

    goto :goto_1

    .line 257
    .restart local v1       #pi:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private updateActiveNotification(Ljava/util/Collection;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 145
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/downloads/DownloadInfo;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v7, p1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    .line 150
    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 151
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    .line 152
    iget-wide v8, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 153
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 154
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 160
    :goto_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    .line 162
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;JJ)V

    .line 173
    :goto_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadNotificationWhens:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadNotificationWhens:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v4, p0

    move-wide v5, v8

    move-wide v8, v2

    .line 177
    invoke-direct/range {v4 .. v9}, Lcom/android/providers/downloads/DownloadNotification;->noteTraffic(JLjava/lang/String;J)V

    .line 178
    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc4

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_3
    new-instance v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    invoke-direct {v0}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;-><init>()V

    .line 165
    long-to-int v6, v8

    iput v6, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    .line 166
    iget v6, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    iput v6, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mStatus:I

    .line 167
    iput-object v7, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPackageName:Ljava/lang/String;

    .line 168
    iget-object v6, p1, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;JJ)V

    .line 170
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    .line 188
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadNotificationWhens:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 191
    const v0, 0x1080082

    .line 192
    iget v3, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mStatus:I

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_5

    iget v3, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mStatus:I

    const/16 v4, 0xbe

    if-ne v3, v4, :cond_6

    .line 194
    :cond_5
    const v0, 0x1080081

    .line 196
    :cond_6
    iput v0, v2, Landroid/app/Notification;->icon:I

    .line 198
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 201
    new-instance v3, Landroid/widget/RemoteViews;

    const-string v4, "com.android.providers.downloads"

    const v5, 0x1090086

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    iget v5, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_8

    .line 206
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f020010

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v5, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v5, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    iput v5, v2, Landroid/app/Notification;->number:I

    .line 209
    iget v5, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_7

    .line 210
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f020011

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_7
    :goto_4
    const v5, 0x1020016

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 219
    iget-object v4, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 220
    const v4, 0x102026a

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 221
    const v4, 0x102000b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 222
    const v4, 0x102000b

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 231
    :goto_5
    const v4, 0x1020269

    iget-wide v5, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/providers/downloads/DownloadNotification;->getDownloadingText(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 233
    const v4, 0x1020267

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 234
    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    const-string v3, "com.android.providers.downloads"

    const-class v4, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget v4, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 241
    const-string v3, "multiple"

    iget v4, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_b

    const/4 v4, 0x1

    :goto_6
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 245
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v0, v3, v4, v2}, Lcom/android/providers/downloads/SystemFacade;->postNotification(JLandroid/app/Notification;)V

    goto/16 :goto_3

    .line 214
    :cond_8
    const v5, 0x1020268

    iget-object v6, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_4

    .line 224
    :cond_9
    const v4, 0x102026a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    const v4, 0x102000b

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 226
    const v4, 0x102026a

    iget-wide v5, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    long-to-int v5, v5

    iget-wide v6, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    long-to-int v6, v6

    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_a

    const/4 v7, 0x1

    :goto_7
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto/16 :goto_5

    :cond_a
    const/4 v7, 0x0

    goto :goto_7

    .line 241
    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    .line 247
    :cond_c
    return-void

    :cond_d
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private updateCompletedNotification(Ljava/util/Collection;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/downloads/DownloadInfo;

    .line 280
    iget v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 281
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 292
    const v3, 0x1080082

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 294
    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 295
    iget-object v5, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 296
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 297
    :cond_2
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    :cond_3
    sget-object v6, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 304
    iget v4, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v4}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 305
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f020013

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 307
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v6

    move-object v6, v4

    move-object v4, v11

    .line 317
    :goto_2
    const-string v7, "com.android.providers.downloads"

    const-class v8, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 321
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    iput-wide v7, v2, Landroid/app/Notification;->when:J

    .line 322
    iget-object v7, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v7, v5, v6, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 325
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOWNLOAD_HIDE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    const-string v5, "com.android.providers.downloads"

    const-class v6, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 328
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 330
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-interface {v3, v4, v5, v2}, Lcom/android/providers/downloads/SystemFacade;->postNotification(JLandroid/app/Notification;)V

    goto/16 :goto_0

    .line 283
    :cond_4
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 309
    :cond_5
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f020012

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 311
    iget v6, p1, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-nez v6, :cond_6

    .line 312
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOWNLOAD_OPEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v6

    move-object v6, v4

    move-object v4, v11

    goto :goto_2

    .line 314
    :cond_6
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v6

    move-object v6, v4

    move-object v4, v11

    goto/16 :goto_2

    .line 332
    :cond_7
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 334
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 335
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mDownloadNotificationWhens:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    goto :goto_3

    .line 339
    :cond_9
    return-void
.end method


# virtual methods
.method public updateNotification(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->updateActiveNotification(Ljava/util/Collection;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->updateCompletedNotification(Ljava/util/Collection;)V

    .line 140
    return-void
.end method
