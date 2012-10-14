.class Lcom/android/server/vpn/VpnServiceBinder$1;
.super Landroid/net/vpn/IVpnService$Stub;
.source "VpnServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vpn/VpnServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vpn/VpnServiceBinder;


# direct methods
.method constructor <init>(Lcom/android/server/vpn/VpnServiceBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/vpn/VpnServiceBinder$1;->this$0:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-direct {p0}, Landroid/net/vpn/IVpnService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkStatus(Landroid/net/vpn/VpnProfile;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder$1;->this$0:Lcom/android/server/vpn/VpnServiceBinder;

    #calls: Lcom/android/server/vpn/VpnServiceBinder;->checkStatus(Landroid/net/vpn/VpnProfile;)V
    invoke-static {v0, p1}, Lcom/android/server/vpn/VpnServiceBinder;->access$200(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;)V

    .line 74
    return-void
.end method

.method public connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "p"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder$1;->this$0:Lcom/android/server/vpn/VpnServiceBinder;

    #calls: Lcom/android/server/vpn/VpnServiceBinder;->connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/vpn/VpnServiceBinder;->access$000(Lcom/android/server/vpn/VpnServiceBinder;Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder$1;->this$0:Lcom/android/server/vpn/VpnServiceBinder;

    #calls: Lcom/android/server/vpn/VpnServiceBinder;->disconnect()V
    invoke-static {v0}, Lcom/android/server/vpn/VpnServiceBinder;->access$100(Lcom/android/server/vpn/VpnServiceBinder;)V

    .line 70
    return-void
.end method
