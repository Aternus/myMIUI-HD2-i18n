.class Lnet/cactii/flash2/TorchService$2;
.super Ljava/util/TimerTask;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/cactii/flash2/TorchService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/cactii/flash2/TorchService;


# direct methods
.method constructor <init>(Lnet/cactii/flash2/TorchService;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lnet/cactii/flash2/TorchService$2;->this$0:Lnet/cactii/flash2/TorchService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lnet/cactii/flash2/TorchService$2;->this$0:Lnet/cactii/flash2/TorchService;

    #getter for: Lnet/cactii/flash2/TorchService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lnet/cactii/flash2/TorchService;->access$100(Lnet/cactii/flash2/TorchService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/cactii/flash2/FlashDevice;->instance(Landroid/content/Context;)Lnet/cactii/flash2/FlashDevice;

    move-result-object v0

    iget-object v1, p0, Lnet/cactii/flash2/TorchService$2;->this$0:Lnet/cactii/flash2/TorchService;

    #getter for: Lnet/cactii/flash2/TorchService;->mBright:Z
    invoke-static {v1}, Lnet/cactii/flash2/TorchService;->access$000(Lnet/cactii/flash2/TorchService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Lnet/cactii/flash2/FlashDevice;->setFlashMode(I)V

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
