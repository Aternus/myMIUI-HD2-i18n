.class Lcom/android/server/vpn/L2tpIpsecPskService;
.super Lcom/android/server/vpn/VpnService;
.source "L2tpIpsecPskService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/vpn/VpnService",
        "<",
        "Landroid/net/vpn/L2tpIpsecPskProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/vpn/VpnService;-><init>()V

    return-void
.end method


# virtual methods
.method protected connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "serverIp"
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpIpsecPskService;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/L2tpIpsecPskProfile;

    .line 34
    .local v1, p:Landroid/net/vpn/L2tpIpsecPskProfile;
    invoke-virtual {p0}, Lcom/android/server/vpn/L2tpIpsecPskService;->getDaemons()Lcom/android/server/vpn/VpnDaemons;

    move-result-object v0

    .line 37
    .local v0, daemons:Lcom/android/server/vpn/VpnDaemons;
    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/vpn/VpnDaemons;->startIpsecForL2tp(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/vpn/DaemonProxy;->closeControlSocket()V

    .line 40
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/android/server/vpn/L2tpIpsecPskService;->sleep(I)V

    .line 43
    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->isSecretEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/vpn/L2tpIpsecPskProfile;->getSecretString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, p1, v2, p2, p3}, Lcom/android/server/vpn/VpnDaemons;->startL2tp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;

    .line 46
    return-void

    .line 43
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
