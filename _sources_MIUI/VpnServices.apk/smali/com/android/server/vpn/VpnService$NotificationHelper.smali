.class Lcom/android/server/vpn/VpnService$NotificationHelper;
.super Ljava/lang/Object;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vpn/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vpn/VpnService;


# direct methods
.method private constructor <init>(Lcom/android/server/vpn/VpnService;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iput-object p1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vpn/VpnService;Lcom/android/server/vpn/VpnService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 451
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnService$NotificationHelper;-><init>(Lcom/android/server/vpn/VpnService;)V

    return-void
.end method

.method private enableNotification(Landroid/app/Notification;)V
    .locals 2
    .parameter "n"

    .prologue
    .line 482
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v0, v0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/server/vpn/VpnServiceBinder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 484
    return-void
.end method

.method private getConnectedNotificationMessage(J)Ljava/lang/String;
    .locals 2
    .parameter "now"

    .prologue
    .line 510
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->mStartTime:J
    invoke-static {v0}, Lcom/android/server/vpn/VpnService;->access$600(Lcom/android/server/vpn/VpnService;)J

    move-result-wide v0

    sub-long v0, p1, v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getFormattedTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisconnectedNotificationMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 514
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v0, v0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Lcom/android/server/vpn/VpnServiceBinder;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFormattedTime(I)Ljava/lang/String;
    .locals 6
    .parameter "duration"

    .prologue
    .line 501
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    div-int/lit16 v0, p1, 0xe10

    .line 502
    .local v0, hours:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .local v1, sb:Ljava/lang/StringBuilder;
    if-lez v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    :cond_0
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    rem-int/lit16 v5, p1, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    rem-int/lit8 v5, p1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getNotificationTitle(Z)Ljava/lang/String;
    .locals 4
    .parameter "connected"

    .prologue
    .line 492
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v1, v1, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Lcom/android/server/vpn/VpnServiceBinder;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 497
    .local v0, formatString:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v3, v3, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 492
    .end local v0           #formatString:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v1, v1, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Lcom/android/server/vpn/VpnServiceBinder;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private prepareNotificationIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    const/4 v3, 0x0

    .line 487
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v0, v0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    new-instance v1, Landroid/net/vpn/VpnManager;

    iget-object v2, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v2, v2, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-direct {v1, v2}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/net/vpn/VpnManager;->createSettingsActivityIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method disableNotification()V
    .locals 2

    .prologue
    .line 477
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v0, v0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/server/vpn/VpnServiceBinder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 479
    return-void
.end method

.method showDisconnect()V
    .locals 5

    .prologue
    .line 465
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getNotificationTitle(Z)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, title:Ljava/lang/String;
    new-instance v0, Landroid/app/Notification;

    const v2, 0x7f020001

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 468
    .local v0, n:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v2, v2, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-direct {p0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getDisconnectedNotificationMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->prepareNotificationIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 471
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 472
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->disableNotification()V

    .line 473
    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->enableNotification(Landroid/app/Notification;)V

    .line 474
    return-void
.end method

.method update(J)V
    .locals 5
    .parameter "now"

    .prologue
    .line 453
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getNotificationTitle(Z)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, title:Ljava/lang/String;
    new-instance v0, Landroid/app/Notification;

    const/high16 v2, 0x7f02

    iget-object v3, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->mStartTime:J
    invoke-static {v3}, Lcom/android/server/vpn/VpnService;->access$600(Lcom/android/server/vpn/VpnService;)J

    move-result-wide v3

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 456
    .local v0, n:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v2, v2, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-direct {p0, p1, p2}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getConnectedNotificationMessage(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->prepareNotificationIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 459
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 460
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 461
    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->enableNotification(Landroid/app/Notification;)V

    .line 462
    return-void
.end method
