.class public Lcom/android/server/vpn/VpnServiceBinder;
.super Landroid/app/Service;
.source "VpnServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vpn/VpnServiceBinder$4;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mService:Lcom/android/server/vpn/VpnService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/vpn/VpnService",
            "<+",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/server/vpn/VpnServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vpn/VpnServiceBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    new-instance v0, Lcom/android/server/vpn/VpnServiceBinder$1;

    invoke-direct {v0, p0}, Lcom/android/server/vpn/VpnServiceBinder$1;-><init>(Lcom/android/server/vpn/VpnServiceBinder;)V

    iput-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vpn/VpnServiceBinder;->connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/vpn/VpnServiceBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/vpn/VpnServiceBinder;->disconnect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnServiceBinder;->checkStatus(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method private broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V
    .locals 1
    .parameter "name"
    .parameter "s"

    .prologue
    .line 192
    new-instance v0, Landroid/net/vpn/VpnManager;

    invoke-direct {v0, p0}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Landroid/net/vpn/VpnManager;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V

    .line 193
    return-void
.end method

.method private checkSavedStates()V
    .locals 5

    .prologue
    .line 146
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/android/server/vpn/VpnServiceBinder;->getStateFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 148
    .local v1, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vpn/VpnService;

    iput-object v2, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    .line 149
    iget-object v2, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v2, p0}, Lcom/android/server/vpn/VpnService;->recover(Lcom/android/server/vpn/VpnServiceBinder;)V

    .line 150
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1           #ois:Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 154
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "VpnServiceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recovery error, remove states: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnServiceBinder;->removeStates()V

    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private declared-synchronized checkStatus(Landroid/net/vpn/VpnProfile;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    iget-object v1, v1, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v0, v1}, Lcom/android/server/vpn/VpnServiceBinder;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v1}, Lcom/android/server/vpn/VpnService;->getState()Landroid/net/vpn/VpnState;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/vpn/VpnServiceBinder;->broadcastConnectivity(Ljava/lang/String;Landroid/net/vpn/VpnState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "p"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 121
    :goto_0
    monitor-exit p0

    return v1

    .line 114
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnServiceBinder;->createService(Landroid/net/vpn/VpnProfile;)Lcom/android/server/vpn/VpnService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    .line 116
    .local v0, s:Lcom/android/server/vpn/VpnService;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/vpn/VpnServiceBinder$2;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/server/vpn/VpnServiceBinder$2;-><init>(Lcom/android/server/vpn/VpnServiceBinder;Lcom/android/server/vpn/VpnService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    const/4 v1, 0x1

    goto :goto_0

    .line 113
    .end local v0           #s:Lcom/android/server/vpn/VpnService;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private createService(Landroid/net/vpn/VpnProfile;)Lcom/android/server/vpn/VpnService;
    .locals 7
    .parameter "p"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/vpn/VpnProfile;",
            ")",
            "Lcom/android/server/vpn/VpnService",
            "<+",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    sget-object v5, Lcom/android/server/vpn/VpnServiceBinder$4;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 187
    const/4 v5, 0x0

    .end local p1
    :goto_0
    return-object v5

    .line 162
    .restart local p1
    :pswitch_0
    new-instance v0, Lcom/android/server/vpn/L2tpService;

    invoke-direct {v0}, Lcom/android/server/vpn/L2tpService;-><init>()V

    .line 163
    .local v0, l2tp:Lcom/android/server/vpn/L2tpService;
    check-cast p1, Landroid/net/vpn/L2tpProfile;

    .end local p1
    invoke-virtual {v0, p0, p1}, Lcom/android/server/vpn/L2tpService;->setContext(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V

    move-object v5, v0

    .line 164
    goto :goto_0

    .line 167
    .end local v0           #l2tp:Lcom/android/server/vpn/L2tpService;
    .restart local p1
    :pswitch_1
    new-instance v2, Lcom/android/server/vpn/OpenvpnService;

    invoke-direct {v2}, Lcom/android/server/vpn/OpenvpnService;-><init>()V

    .line 168
    .local v2, ovpn:Lcom/android/server/vpn/OpenvpnService;
    check-cast p1, Landroid/net/vpn/OpenvpnProfile;

    .end local p1
    invoke-virtual {v2, p0, p1}, Lcom/android/server/vpn/OpenvpnService;->setContext(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V

    move-object v5, v2

    .line 169
    goto :goto_0

    .line 172
    .end local v2           #ovpn:Lcom/android/server/vpn/OpenvpnService;
    .restart local p1
    :pswitch_2
    new-instance v3, Lcom/android/server/vpn/PptpService;

    invoke-direct {v3}, Lcom/android/server/vpn/PptpService;-><init>()V

    .line 173
    .local v3, pptp:Lcom/android/server/vpn/PptpService;
    check-cast p1, Landroid/net/vpn/PptpProfile;

    .end local p1
    invoke-virtual {v3, p0, p1}, Lcom/android/server/vpn/PptpService;->setContext(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V

    move-object v5, v3

    .line 174
    goto :goto_0

    .line 177
    .end local v3           #pptp:Lcom/android/server/vpn/PptpService;
    .restart local p1
    :pswitch_3
    new-instance v4, Lcom/android/server/vpn/L2tpIpsecPskService;

    invoke-direct {v4}, Lcom/android/server/vpn/L2tpIpsecPskService;-><init>()V

    .line 178
    .local v4, psk:Lcom/android/server/vpn/L2tpIpsecPskService;
    check-cast p1, Landroid/net/vpn/L2tpIpsecPskProfile;

    .end local p1
    invoke-virtual {v4, p0, p1}, Lcom/android/server/vpn/L2tpIpsecPskService;->setContext(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V

    move-object v5, v4

    .line 179
    goto :goto_0

    .line 182
    .end local v4           #psk:Lcom/android/server/vpn/L2tpIpsecPskService;
    .restart local p1
    :pswitch_4
    new-instance v1, Lcom/android/server/vpn/L2tpIpsecService;

    invoke-direct {v1}, Lcom/android/server/vpn/L2tpIpsecService;-><init>()V

    .line 183
    .local v1, l2tpIpsec:Lcom/android/server/vpn/L2tpIpsecService;
    check-cast p1, Landroid/net/vpn/L2tpIpsecProfile;

    .end local p1
    invoke-virtual {v1, p0, p1}, Lcom/android/server/vpn/L2tpIpsecService;->setContext(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V

    move-object v5, v1

    .line 184
    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private declared-synchronized disconnect()V
    .locals 3

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 133
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    .line 128
    .local v0, s:Lcom/android/server/vpn/VpnService;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/vpn/VpnServiceBinder$3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/vpn/VpnServiceBinder$3;-><init>(Lcom/android/server/vpn/VpnServiceBinder;Lcom/android/server/vpn/VpnService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    .end local v0           #s:Lcom/android/server/vpn/VpnService;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getStateFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/misc/vpn/.states"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 80
    invoke-direct {p0}, Lcom/android/server/vpn/VpnServiceBinder;->checkSavedStates()V

    .line 81
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 87
    return-void
.end method

.method removeStates()V
    .locals 5

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/vpn/VpnServiceBinder;->getStateFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1           #f:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 107
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "VpnServiceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     remove states: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method saveStates()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v1, "VpnServiceBinder"

    const-string v2, "     saving states"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/android/server/vpn/VpnServiceBinder;->getStateFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 98
    .local v0, oos:Ljava/io/ObjectOutputStream;
    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder;->mService:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 100
    return-void
.end method
