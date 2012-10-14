.class Lcom/android/browser/ui/MiRenViewFlipperWrapper$2;
.super Ljava/lang/Object;
.source "MiRenViewFlipperWrapper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenViewFlipperWrapper;->setDisplayedDetachedView(ILcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

.field final synthetic val$oldView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenViewFlipperWrapper;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$2;->this$0:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$2;->val$oldView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$2;->val$oldView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$2;->this$0:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    #getter for: Lcom/android/browser/ui/MiRenViewFlipperWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->access$100(Lcom/android/browser/ui/MiRenViewFlipperWrapper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 108
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$2;->val$oldView:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 113
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 116
    return-void
.end method
