.class public Lcom/android/settings/vpn/OpenvpnAuthenticationActor;
.super Lcom/android/settings/vpn/AuthenticationActor;
.source "OpenvpnAuthenticationActor.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter "c"
    .parameter "p"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn/AuthenticationActor;-><init>(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V

    .line 32
    return-void
.end method


# virtual methods
.method public connect(Landroid/app/Dialog;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 41
    if-nez p1, :cond_0

    .line 44
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/OpenvpnAuthenticationActor;->connect(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/vpn/AuthenticationActor;->connect(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public isConnectDialogNeeded()Z
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/vpn/OpenvpnAuthenticationActor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/OpenvpnProfile;

    .line 37
    .local v0, p:Landroid/net/vpn/OpenvpnProfile;
    invoke-virtual {v0}, Landroid/net/vpn/OpenvpnProfile;->getUserAuth()Z

    move-result v1

    return v1
.end method
