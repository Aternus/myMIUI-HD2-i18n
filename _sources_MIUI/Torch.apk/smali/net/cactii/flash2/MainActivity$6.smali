.class Lnet/cactii/flash2/MainActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/cactii/flash2/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/cactii/flash2/MainActivity;


# direct methods
.method constructor <init>(Lnet/cactii/flash2/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lnet/cactii/flash2/MainActivity$6;->this$0:Lnet/cactii/flash2/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lnet/cactii/flash2/MainActivity$6;->this$0:Lnet/cactii/flash2/MainActivity;

    #calls: Lnet/cactii/flash2/MainActivity;->updateBigButtonState()V
    invoke-static {v0}, Lnet/cactii/flash2/MainActivity;->access$700(Lnet/cactii/flash2/MainActivity;)V

    .line 288
    :cond_0
    return-void
.end method
