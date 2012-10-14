.class public Lnet/cactii/flash2/TorchService$WrapperTask;
.super Ljava/util/TimerTask;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/cactii/flash2/TorchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrapperTask"
.end annotation


# instance fields
.field private final target:Ljava/lang/Runnable;

.field final synthetic this$0:Lnet/cactii/flash2/TorchService;


# direct methods
.method public constructor <init>(Lnet/cactii/flash2/TorchService;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 139
    iput-object p1, p0, Lnet/cactii/flash2/TorchService$WrapperTask;->this$0:Lnet/cactii/flash2/TorchService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 140
    iput-object p2, p0, Lnet/cactii/flash2/TorchService$WrapperTask;->target:Ljava/lang/Runnable;

    .line 141
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lnet/cactii/flash2/TorchService$WrapperTask;->target:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 145
    return-void
.end method
