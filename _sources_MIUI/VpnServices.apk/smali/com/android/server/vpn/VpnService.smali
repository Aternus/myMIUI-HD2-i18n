.class abstract Lcom/android/server/vpn/VpnService;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vpn/VpnService$NotificationHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Landroid/net/vpn/VpnProfile;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final TAG:Ljava/lang/String;

.field transient mContext:Lcom/android/server/vpn/VpnServiceBinder;

.field private mDaemons:Lcom/android/server/vpn/VpnDaemons;

.field private mError:Ljava/lang/Throwable;

.field private mLocalIf:Ljava/lang/String;

.field private mLocalIp:Ljava/lang/String;

.field private transient mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vpn/VpnService",
            "<TE;>.NotificationHelper;"
        }
    .end annotation
.end field

.field private mOriginalDns1:Ljava/lang/String;

.field private mOriginalDns2:Ljava/lang/String;

.field private mOriginalDomainSuffices:Ljava/lang/String;

.field mProfile:Landroid/net/vpn/VpnProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mState:Landroid/net/vpn/VpnState;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Lcom/android/server/vpn/VpnService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    .line 63
    sget-object v0, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    .line 76
    new-instance v0, Lcom/android/server/vpn/VpnDaemons;

    invoke-direct {v0}, Lcom/android/server/vpn/VpnDaemons;-><init>()V

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    .line 451
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/vpn/VpnService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/vpn/VpnService;)Landroid/net/vpn/VpnState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/vpn/VpnService;)Lcom/android/server/vpn/VpnService$NotificationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/vpn/VpnService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->checkConnectivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/vpn/VpnService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->checkDns()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/vpn/VpnService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/server/vpn/VpnService;->mStartTime:J

    return-wide v0
.end method

.method private anyError()Z
    .locals 1

    .prologue
    .line 280
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private broadcastConnectivity(Landroid/net/vpn/VpnState;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 337
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v1, Landroid/net/vpn/VpnManager;

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-direct {v1, v2}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    .line 338
    .local v1, m:Landroid/net/vpn/VpnManager;
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    .line 339
    .local v0, err:Ljava/lang/Throwable;
    sget-object v2, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    if-ne p1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 340
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    .line 356
    .end local v0           #err:Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 343
    .restart local v0       #err:Ljava/lang/Throwable;
    :cond_0
    instance-of v2, v0, Lcom/android/server/vpn/VpnConnectingError;

    if-eqz v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/android/server/vpn/VpnConnectingError;

    .end local v0           #err:Ljava/lang/Throwable;
    invoke-virtual {v0}, Lcom/android/server/vpn/VpnConnectingError;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    goto :goto_0

    .line 346
    .restart local v0       #err:Ljava/lang/Throwable;
    :cond_1
    const-string v2, "ok"

    const-string v3, "vpn.status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;I)V

    goto :goto_0

    .line 354
    :cond_3
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V

    goto :goto_0
.end method

.method private checkConnectivity()Z
    .locals 2

    .prologue
    .line 405
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnDaemons;->anyDaemonStopped()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->isLocalIpChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connectivity lost"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    .line 407
    const/4 v0, 0x0

    .line 409
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkDns()V
    .locals 3

    .prologue
    .line 414
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v2, "net.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, dns1:Ljava/lang/String;
    const-string v2, "vpn.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, vpnDns1:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->setVpnDns()V

    .line 420
    :cond_0
    return-void
.end method

.method private isLocalIpChanged()Z
    .locals 7

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const/4 v6, 0x1

    .line 424
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->mLocalIp:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 425
    .local v2, localIp:Ljava/net/InetAddress;
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 427
    .local v1, localIf:Ljava/net/NetworkInterface;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 428
    :cond_0
    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "       local If changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    .line 436
    .end local v1           #localIf:Ljava/net/NetworkInterface;
    .end local v2           #localIp:Ljava/net/InetAddress;
    :goto_0
    return v3

    .line 432
    .restart local v1       #localIf:Ljava/net/NetworkInterface;
    .restart local v2       #localIp:Ljava/net/InetAddress;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 434
    .end local v1           #localIf:Ljava/net/NetworkInterface;
    .end local v2           #localIp:Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 435
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v4, "isLocalIpChanged()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v6

    .line 436
    goto :goto_0
.end method

.method private onBeforeConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v3, "vpn.status"

    const-string v2, ""

    .line 188
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->disableNotification()V

    .line 190
    const-string v0, "vpn.dns1"

    const-string v1, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "vpn.dns2"

    const-string v1, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "vpn.status"

    const-string v0, "down"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       VPN UP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vpn.status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method private declared-synchronized onConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v1, "onConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnDaemons;->closeSockets()V

    .line 241
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->saveOriginalDns()V

    .line 242
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->saveAndSetDomainSuffices()V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vpn/VpnService;->mStartTime:J

    .line 250
    sget-object v0, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 251
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->saveSelf()V

    .line 252
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->setVpnDns()V

    .line 254
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->startConnectivityMonitor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onFinalCleanUp()V
    .locals 2

    .prologue
    .line 262
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v1, "onFinalCleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 277
    :goto_0
    monitor-exit p0

    return-void

    .line 267
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->anyError()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->disableNotification()V

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->restoreOriginalDns()V

    .line 270
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->restoreOriginalDomainSuffices()V

    .line 271
    sget-object v0, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 274
    const-string v0, "vpn.status"

    const-string v1, "down"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnServiceBinder;->removeStates()V

    .line 276
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnServiceBinder;->stopSelf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restoreOriginalDns()V
    .locals 10

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "net.dns2"

    const-string v5, "net.dns1"

    .line 285
    const-string v1, "vpn.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, vpnDns1:Ljava/lang/String;
    const-string v1, "net.dns1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v2, "restore original dns prop: %s --> %s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "net.dns1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v2, "restore original dns prop: %s --> %s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "net.dns2"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v1, "net.dns1"

    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "net.dns2"

    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    return-void
.end method

.method private restoreOriginalDomainSuffices()V
    .locals 3

    .prologue
    .line 327
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore original suffices --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v0, "net.dns.search"

    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private saveAndSetDomainSuffices()V
    .locals 5

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v4, "net.dns.search"

    .line 318
    const-string v1, "net.dns.search"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save original suffices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vpn/VpnService;->mOriginalDomainSuffices:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getDomainSuffices()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, list:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    const-string v1, "net.dns.search"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    return-void
.end method

.method private saveLocalIpAndInterface(Ljava/lang/String;)V
    .locals 7
    .parameter "serverIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    .line 389
    .local v3, s:Ljava/net/DatagramSocket;
    const/16 v2, 0x50

    .line 390
    .local v2, port:I
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 391
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 392
    .local v1, localIp:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/vpn/VpnService;->mLocalIp:Ljava/lang/String;

    .line 393
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 394
    .local v0, localIf:Ljava/net/NetworkInterface;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput-object v4, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    .line 395
    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Local interface is empty!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 394
    :cond_0
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 399
    :cond_1
    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Local IP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vpn/VpnService;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", if: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/vpn/VpnService;->mLocalIf:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method private saveOriginalDns()V
    .locals 5

    .prologue
    .line 297
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v0, "net.dns1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    .line 298
    const-string v0, "net.dns2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v1, "save original dns prop: %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns1:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/vpn/VpnService;->mOriginalDns2:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method private saveSelf()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnServiceBinder;->saveStates()V

    .line 259
    return-void
.end method

.method private setState(Landroid/net/vpn/VpnState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 332
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iput-object p1, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    .line 333
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnService;->broadcastConnectivity(Landroid/net/vpn/VpnState;)V

    .line 334
    return-void
.end method

.method private setVpnDns()V
    .locals 6

    .prologue
    .line 304
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v2, "vpn.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, vpnDns1:Ljava/lang/String;
    const-string v2, "vpn.dns2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, vpnDns2:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v3, "No vpn dns supplied, not updating"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string v2, "net.dns1"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v2, "net.dns2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v3, "set vpn dns prop: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected abstract connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected disconnect()V
    .locals 1

    .prologue
    .line 91
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnDaemons;->stopAll()V

    .line 92
    return-void
.end method

.method protected getDaemons()Lcom/android/server/vpn/VpnDaemons;
    .locals 1

    .prologue
    .line 98
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    return-object v0
.end method

.method protected getIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "hostName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getProfile()Landroid/net/vpn/VpnProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method getState()Landroid/net/vpn/VpnState;
    .locals 1

    .prologue
    .line 136
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    return-object v0
.end method

.method declared-synchronized onConnect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 141
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_0
    sget-object v2, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v2}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 143
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    invoke-virtual {v2}, Lcom/android/server/vpn/VpnDaemons;->stopAll()V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/VpnService;->getIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, serverIp:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/vpn/VpnService;->saveLocalIpAndInterface(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onBeforeConnect()V

    .line 147
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/vpn/VpnService;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->waitUntilConnectedOrTimedout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const/4 v2, 0x1

    .line 152
    .end local v1           #serverIp:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v2

    .line 150
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 151
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    const/4 v2, 0x0

    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onDisconnect()V
    .locals 3

    .prologue
    .line 158
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v2, "disconnecting VPN..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v1, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v1}, Lcom/android/server/vpn/VpnService;->setState(Landroid/net/vpn/VpnState;)V

    .line 160
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    invoke-virtual {v1}, Lcom/android/server/vpn/VpnService$NotificationHelper;->showDisconnect()V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onFinalCleanUp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 163
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v2, "onDisconnect()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onFinalCleanUp()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 166
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onFinalCleanUp()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method onError(I)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 183
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v0, Lcom/android/server/vpn/VpnConnectingError;

    invoke-direct {v0, p1}, Lcom/android/server/vpn/VpnConnectingError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    .line 184
    return-void
.end method

.method onError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 173
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   multiple errors occur, record the last one: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;

    const-string v1, "onError()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    iput-object p1, p0, Lcom/android/server/vpn/VpnService;->mError:Ljava/lang/Throwable;

    .line 179
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->onDisconnect()V

    .line 180
    return-void
.end method

.method protected recover()V
    .locals 0

    .prologue
    .line 122
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->startConnectivityMonitor()V

    .line 123
    return-void
.end method

.method recover(Lcom/android/server/vpn/VpnServiceBinder;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 126
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iput-object p1, p0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    .line 127
    new-instance v0, Lcom/android/server/vpn/VpnService$NotificationHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vpn/VpnService$NotificationHelper;-><init>(Lcom/android/server/vpn/VpnService;Lcom/android/server/vpn/VpnService$1;)V

    iput-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    .line 129
    sget-object v0, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    iget-object v1, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "VpnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     recovered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService;->recover()V

    .line 133
    :cond_0
    return-void
.end method

.method setContext(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vpn/VpnServiceBinder;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    .local p2, profile:Landroid/net/vpn/VpnProfile;,"TE;"
    iput-object p2, p0, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/vpn/VpnService;->recover(Lcom/android/server/vpn/VpnServiceBinder;)V

    .line 118
    return-void
.end method

.method setVpnStateUp(Z)V
    .locals 3
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const-string v1, "vpn.status"

    .line 223
    if-eqz p1, :cond_0

    .line 224
    const-string v0, "vpn.status"

    const-string v0, "ok"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onConnected()V

    .line 226
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vpn/VpnService$NotificationHelper;->update(J)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "vpn.status"

    const-string v0, "down"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sleep(I)V
    .locals 2
    .parameter "ms"

    .prologue
    .line 442
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method startConnectivityMonitor()V
    .locals 2

    .prologue
    .line 359
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/vpn/VpnService$1;

    invoke-direct {v1, p0}, Lcom/android/server/vpn/VpnService$1;-><init>(Lcom/android/server/vpn/VpnService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 385
    return-void
.end method

.method vpnStateUpdate(JJ)V
    .locals 3
    .parameter "in"
    .parameter "out"

    .prologue
    .line 234
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vpn/VpnService$NotificationHelper;->update(J)V

    .line 235
    return-void
.end method

.method waitUntilConnectedOrTimedout()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/android/server/vpn/VpnService;,"Lcom/android/server/vpn/VpnService<TE;>;"
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/VpnService;->sleep(I)V

    .line 200
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x50

    if-ge v1, v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    sget-object v3, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    if-eq v2, v3, :cond_2

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;

    sget-object v3, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    if-ne v2, v3, :cond_1

    .line 218
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Connecting timed out"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    .line 220
    :cond_1
    :goto_1
    return-void

    .line 203
    :cond_2
    const-string v2, "ok"

    const-string v3, "vpn.status"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;->onConnected()V

    goto :goto_1

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/android/server/vpn/VpnService;->mDaemons:Lcom/android/server/vpn/VpnDaemons;

    invoke-virtual {v2}, Lcom/android/server/vpn/VpnDaemons;->getSocketError()I

    move-result v0

    .line 209
    .local v0, err:I
    if-eqz v0, :cond_4

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/server/vpn/VpnService;->onError(I)V

    goto :goto_1

    .line 214
    :cond_4
    const/16 v2, 0x1f4

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/VpnService;->sleep(I)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
