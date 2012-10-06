.class Lcom/miui/player/ui/ScanningProgress$2;
.super Ljava/lang/Object;
.source "ScanningProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/ScanningProgress;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/ScanningProgress;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/ScanningProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/miui/player/ui/ScanningProgress$2;->this$0:Lcom/miui/player/ui/ScanningProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress$2;->this$0:Lcom/miui/player/ui/ScanningProgress;

    #getter for: Lcom/miui/player/ui/ScanningProgress;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/player/ui/ScanningProgress;->access$200(Lcom/miui/player/ui/ScanningProgress;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress$2;->this$0:Lcom/miui/player/ui/ScanningProgress;

    const/4 v1, 0x1

    #setter for: Lcom/miui/player/ui/ScanningProgress;->mIsCanceled:Z
    invoke-static {v0, v1}, Lcom/miui/player/ui/ScanningProgress;->access$302(Lcom/miui/player/ui/ScanningProgress;Z)Z

    .line 93
    return-void
.end method
