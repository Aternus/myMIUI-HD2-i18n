.class Lcom/android/server/vpn/VpnServiceBinder$3;
.super Ljava/lang/Object;
.source "VpnServiceBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vpn/VpnServiceBinder;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vpn/VpnServiceBinder;

.field final synthetic val$s:Lcom/android/server/vpn/VpnService;


# direct methods
.method constructor <init>(Lcom/android/server/vpn/VpnServiceBinder;Lcom/android/server/vpn/VpnService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/vpn/VpnServiceBinder$3;->this$0:Lcom/android/server/vpn/VpnServiceBinder;

    iput-object p2, p0, Lcom/android/server/vpn/VpnServiceBinder$3;->val$s:Lcom/android/server/vpn/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder$3;->val$s:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService;->onDisconnect()V

    .line 131
    return-void
.end method
