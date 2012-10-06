.class Lnet/cactii/flash2/TorchService$3;
.super Ljava/lang/Object;
.source "TorchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/cactii/flash2/TorchService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCounter:I

.field final synthetic this$0:Lnet/cactii/flash2/TorchService;


# direct methods
.method constructor <init>(Lnet/cactii/flash2/TorchService;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lnet/cactii/flash2/TorchService$3;->this$0:Lnet/cactii/flash2/TorchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lnet/cactii/flash2/TorchService$3;->mCounter:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 67
    iget-object v1, p0, Lnet/cactii/flash2/TorchService$3;->this$0:Lnet/cactii/flash2/TorchService;

    #getter for: Lnet/cactii/flash2/TorchService;->mBright:Z
    invoke-static {v1}, Lnet/cactii/flash2/TorchService;->access$000(Lnet/cactii/flash2/TorchService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    move v0, v1

    .line 68
    .local v0, flashMode:I
    :goto_0
    iget-object v1, p0, Lnet/cactii/flash2/TorchService$3;->this$0:Lnet/cactii/flash2/TorchService;

    #getter for: Lnet/cactii/flash2/TorchService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnet/cactii/flash2/TorchService;->access$100(Lnet/cactii/flash2/TorchService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/cactii/flash2/FlashDevice;->instance(Landroid/content/Context;)Lnet/cactii/flash2/FlashDevice;

    move-result-object v1

    invoke-virtual {v1}, Lnet/cactii/flash2/FlashDevice;->getFlashMode()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 69
    iget v1, p0, Lnet/cactii/flash2/TorchService$3;->mCounter:I

    sub-int v2, v1, v3

    iput v2, p0, Lnet/cactii/flash2/TorchService$3;->mCounter:I

    if-ge v1, v3, :cond_0

    .line 70
    iget-object v1, p0, Lnet/cactii/flash2/TorchService$3;->this$0:Lnet/cactii/flash2/TorchService;

    #getter for: Lnet/cactii/flash2/TorchService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnet/cactii/flash2/TorchService;->access$100(Lnet/cactii/flash2/TorchService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/cactii/flash2/FlashDevice;->instance(Landroid/content/Context;)Lnet/cactii/flash2/FlashDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/cactii/flash2/FlashDevice;->setFlashMode(I)V

    .line 76
    :cond_0
    :goto_1
    return-void

    .end local v0           #flashMode:I
    :cond_1
    move v0, v3

    .line 67
    goto :goto_0

    .line 73
    .restart local v0       #flashMode:I
    :cond_2
    iget-object v1, p0, Lnet/cactii/flash2/TorchService$3;->this$0:Lnet/cactii/flash2/TorchService;

    #getter for: Lnet/cactii/flash2/TorchService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lnet/cactii/flash2/TorchService;->access$100(Lnet/cactii/flash2/TorchService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/cactii/flash2/FlashDevice;->instance(Landroid/content/Context;)Lnet/cactii/flash2/FlashDevice;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lnet/cactii/flash2/FlashDevice;->setFlashMode(I)V

    .line 74
    const/4 v1, 0x4

    iput v1, p0, Lnet/cactii/flash2/TorchService$3;->mCounter:I

    goto :goto_1
.end method
