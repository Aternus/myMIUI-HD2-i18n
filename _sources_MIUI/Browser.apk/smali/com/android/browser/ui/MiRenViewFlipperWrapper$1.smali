.class Lcom/android/browser/ui/MiRenViewFlipperWrapper$1;
.super Landroid/os/Handler;
.source "MiRenViewFlipperWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenViewFlipperWrapper;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenViewFlipperWrapper;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenViewFlipperWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$1;->this$0:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 46
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 49
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$1;->this$0:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    if-ne v1, v2, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$1;->this$0:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->removeView(Landroid/view/View;Z)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$1;->this$0:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    const/4 v2, 0x1

    #setter for: Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mSwitchFinished:Z
    invoke-static {v1, v2}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->access$002(Lcom/android/browser/ui/MiRenViewFlipperWrapper;Z)Z

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
