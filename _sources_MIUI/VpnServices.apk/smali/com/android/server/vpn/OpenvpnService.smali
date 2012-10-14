.class Lcom/android/server/vpn/OpenvpnService;
.super Lcom/android/server/vpn/VpnService;
.source "OpenvpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/vpn/VpnService",
        "<",
        "Landroid/net/vpn/OpenvpnProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static count:I


# instance fields
.field private transient mPassword:Ljava/lang/String;

.field private transient mUsername:Ljava/lang/String;

.field private final socketName:Ljava/lang/String;

.field private transient thread:Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/server/vpn/OpenvpnService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vpn/OpenvpnService;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/server/vpn/OpenvpnService;->count:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openvpn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/vpn/OpenvpnService;->getCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/OpenvpnService;->socketName:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vpn/OpenvpnService;->thread:Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vpn/OpenvpnService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService;->socketName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/vpn/OpenvpnService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/vpn/OpenvpnService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/server/vpn/OpenvpnService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized getCount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    const-class v0, Lcom/android/server/vpn/OpenvpnService;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/vpn/OpenvpnService;->count:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/server/vpn/OpenvpnService;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "serverIp"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, ""

    const-string v6, "[[INLINE]]"

    .line 63
    invoke-virtual {p0}, Lcom/android/server/vpn/OpenvpnService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/OpenvpnProfile;

    .line 64
    .local v2, p:Landroid/net/vpn/OpenvpnProfile;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/android/server/vpn/OpenvpnService;->mUsername:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/android/server/vpn/OpenvpnService;->mPassword:Ljava/lang/String;

    .line 69
    const-string v4, "openvpn"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v4, "--dev"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getDevice()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 72
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getDevice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :goto_0
    const-string v4, "--remote"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v4, "--nobind"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v4, "--proto"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getProto()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v4, "--client"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v4, "--rport"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getPort()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getCAName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 85
    const-string v4, "--ca"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v4, "[[INLINE]]"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[[ANDROID]]CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getCAName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getCertName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 90
    const-string v4, "--cert"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v4, "[[INLINE]]"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[[ANDROID]]USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getCertName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v4, "--key"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v4, "[[INLINE]]"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[[ANDROID]]USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getCertName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    const-string v4, "--persist-tun"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v4, "--persist-key"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v4, "--management"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/dev/socket/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/vpn/OpenvpnService;->socketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v4, "unix"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v4, "--management-hold"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getUseCompLzo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    const-string v4, "--comp-lzo"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getRedirectGateway()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    const-string v4, "--redirect-gateway"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v4, "def1"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_3
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getUserAuth()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    const-string v4, "--auth-user-pass"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v4, "--management-query-passwords"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_4
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getSupplyAddr()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 115
    const-string v4, "--ifconfig"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getLocalAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getRemoteAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 120
    const-string v4, "--cipher"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getCipher()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_6
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 124
    const-string v4, "--keysize"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getKeySize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_7
    const-string v4, "--up"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v4, "/system/xbin/openvpn-up.sh"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v4, "--script-security"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getExtra()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getExtra()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 133
    new-instance v3, Ljava/util/Scanner;

    invoke-virtual {v2}, Landroid/net/vpn/OpenvpnProfile;->getExtra()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 134
    .local v3, s:Ljava/util/Scanner;
    :goto_1
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 135
    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    .end local v3           #s:Ljava/util/Scanner;
    :cond_8
    const-string v4, "tun"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 137
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/vpn/OpenvpnService;->getDaemons()Lcom/android/server/vpn/VpnDaemons;

    move-result-object v4

    const-string v5, "mtpd"

    invoke-virtual {v4, v5}, Lcom/android/server/vpn/VpnDaemons;->startDaemon(Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v1

    .line 138
    .local v1, mtpd:Lcom/android/server/vpn/DaemonProxy;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/android/server/vpn/DaemonProxy;->sendCommand([Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method protected disconnect()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService;->thread:Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService;->thread:Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;

    invoke-virtual {v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->disconnectAndWait()V

    .line 145
    :cond_0
    return-void
.end method

.method protected recover()V
    .locals 2

    .prologue
    .line 158
    :try_start_0
    new-instance v1, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;

    invoke-direct {v1, p0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;-><init>(Lcom/android/server/vpn/OpenvpnService;)V

    iput-object v1, p0, Lcom/android/server/vpn/OpenvpnService;->thread:Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;

    .line 159
    iget-object v1, p0, Lcom/android/server/vpn/OpenvpnService;->thread:Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;

    invoke-virtual {v1}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->openvpnStart()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 161
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lcom/android/server/vpn/OpenvpnService;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method startConnectivityMonitor()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method waitUntilConnectedOrTimedout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;

    invoke-direct {v0, p0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;-><init>(Lcom/android/server/vpn/OpenvpnService;)V

    iput-object v0, p0, Lcom/android/server/vpn/OpenvpnService;->thread:Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;

    .line 150
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService;->thread:Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;

    invoke-virtual {v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->openvpnStart()V

    .line 151
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService;->thread:Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->waitConnect(J)V

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/vpn/OpenvpnService;->setVpnStateUp(Z)V

    .line 153
    return-void
.end method
