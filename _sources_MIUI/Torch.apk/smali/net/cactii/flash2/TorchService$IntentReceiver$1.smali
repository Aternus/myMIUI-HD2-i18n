.class Lnet/cactii/flash2/TorchService$IntentReceiver$1;
.super Ljava/lang/Object;
.source "TorchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/cactii/flash2/TorchService$IntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/cactii/flash2/TorchService$IntentReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lnet/cactii/flash2/TorchService$IntentReceiver;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lnet/cactii/flash2/TorchService$IntentReceiver$1;->this$1:Lnet/cactii/flash2/TorchService$IntentReceiver;

    iput-object p2, p0, Lnet/cactii/flash2/TorchService$IntentReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lnet/cactii/flash2/TorchService$IntentReceiver$1;->this$1:Lnet/cactii/flash2/TorchService$IntentReceiver;

    iget-object v0, v0, Lnet/cactii/flash2/TorchService$IntentReceiver;->this$0:Lnet/cactii/flash2/TorchService;

    iget-object v1, p0, Lnet/cactii/flash2/TorchService$IntentReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v2, "period"

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/cactii/flash2/TorchService;->Reshedule(I)V

    .line 162
    return-void
.end method
