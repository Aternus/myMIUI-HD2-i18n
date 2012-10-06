.class Lnet/cactii/flash2/TorchSwitch$1;
.super Landroid/os/Handler;
.source "TorchSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/cactii/flash2/TorchSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/cactii/flash2/TorchSwitch;


# direct methods
.method constructor <init>(Lnet/cactii/flash2/TorchSwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lnet/cactii/flash2/TorchSwitch$1;->this$0:Lnet/cactii/flash2/TorchSwitch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    :goto_0
    return-void

    .line 34
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/cactii/flash2/TorchSwitch$1;->this$0:Lnet/cactii/flash2/TorchSwitch;

    #getter for: Lnet/cactii/flash2/TorchSwitch;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnet/cactii/flash2/TorchSwitch;->access$000(Lnet/cactii/flash2/TorchSwitch;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lnet/cactii/flash2/TorchService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    iget-object v1, p0, Lnet/cactii/flash2/TorchSwitch$1;->this$0:Lnet/cactii/flash2/TorchSwitch;

    #getter for: Lnet/cactii/flash2/TorchSwitch;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnet/cactii/flash2/TorchSwitch;->access$000(Lnet/cactii/flash2/TorchSwitch;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
