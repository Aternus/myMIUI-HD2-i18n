.class Lcom/miui/player/ui/ScanningProgress$3;
.super Ljava/lang/Object;
.source "ScanningProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 97
    iput-object p1, p0, Lcom/miui/player/ui/ScanningProgress$3;->this$0:Lcom/miui/player/ui/ScanningProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress$3;->this$0:Lcom/miui/player/ui/ScanningProgress;

    #getter for: Lcom/miui/player/ui/ScanningProgress;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/player/ui/ScanningProgress;->access$200(Lcom/miui/player/ui/ScanningProgress;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress$3;->this$0:Lcom/miui/player/ui/ScanningProgress;

    #getter for: Lcom/miui/player/ui/ScanningProgress;->mListener:Lcom/miui/player/MusicUtils$OnDialogCallback;
    invoke-static {v0}, Lcom/miui/player/ui/ScanningProgress;->access$400(Lcom/miui/player/ui/ScanningProgress;)Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/miui/player/ui/ScanningProgress$3;->this$0:Lcom/miui/player/ui/ScanningProgress;

    #getter for: Lcom/miui/player/ui/ScanningProgress;->mListener:Lcom/miui/player/MusicUtils$OnDialogCallback;
    invoke-static {v0}, Lcom/miui/player/ui/ScanningProgress;->access$400(Lcom/miui/player/ui/ScanningProgress;)Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/ScanningProgress$3;->this$0:Lcom/miui/player/ui/ScanningProgress;

    #getter for: Lcom/miui/player/ui/ScanningProgress;->mRequestCode:I
    invoke-static {v1}, Lcom/miui/player/ui/ScanningProgress;->access$500(Lcom/miui/player/ui/ScanningProgress;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/player/ui/ScanningProgress$3;->this$0:Lcom/miui/player/ui/ScanningProgress;

    #getter for: Lcom/miui/player/ui/ScanningProgress;->mIsCanceled:Z
    invoke-static {v2}, Lcom/miui/player/ui/ScanningProgress;->access$300(Lcom/miui/player/ui/ScanningProgress;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/player/MusicUtils$OnDialogCallback;->onDialogResult(IZLandroid/content/Intent;)V

    .line 105
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 103
    goto :goto_0
.end method
