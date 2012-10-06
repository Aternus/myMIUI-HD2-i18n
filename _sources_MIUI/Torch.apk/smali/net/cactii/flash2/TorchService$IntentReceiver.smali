.class public Lnet/cactii/flash2/TorchService$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/cactii/flash2/TorchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/cactii/flash2/TorchService;


# direct methods
.method public constructor <init>(Lnet/cactii/flash2/TorchService;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lnet/cactii/flash2/TorchService$IntentReceiver;->this$0:Lnet/cactii/flash2/TorchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 157
    iget-object v0, p0, Lnet/cactii/flash2/TorchService$IntentReceiver;->this$0:Lnet/cactii/flash2/TorchService;

    #getter for: Lnet/cactii/flash2/TorchService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lnet/cactii/flash2/TorchService;->access$200(Lnet/cactii/flash2/TorchService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/cactii/flash2/TorchService$IntentReceiver$1;

    invoke-direct {v1, p0, p2}, Lnet/cactii/flash2/TorchService$IntentReceiver$1;-><init>(Lnet/cactii/flash2/TorchService$IntentReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method
