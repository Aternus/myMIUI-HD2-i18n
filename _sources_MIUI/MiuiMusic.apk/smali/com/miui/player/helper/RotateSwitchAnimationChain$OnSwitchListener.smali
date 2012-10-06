.class Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;
.super Ljava/lang/Object;
.source "RotateSwitchAnimationChain.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/RotateSwitchAnimationChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSwitchListener"
.end annotation


# instance fields
.field private final mRotate:[[F

.field private final mTimes:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/miui/player/helper/RotateSwitchAnimationChain;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/RotateSwitchAnimationChain;Landroid/view/View;[[FI)V
    .locals 0
    .parameter
    .parameter "v"
    .parameter "rotate"
    .parameter "times"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->this$0:Lcom/miui/player/helper/RotateSwitchAnimationChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->mView:Landroid/view/View;

    .line 64
    iput-object p3, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->mRotate:[[F

    .line 65
    iput p4, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->mTimes:I

    .line 66
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 69
    iget v0, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->mTimes:I

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->this$0:Lcom/miui/player/helper/RotateSwitchAnimationChain;

    #getter for: Lcom/miui/player/helper/RotateSwitchAnimationChain;->mCallback:Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;
    invoke-static {v0}, Lcom/miui/player/helper/RotateSwitchAnimationChain;->access$000(Lcom/miui/player/helper/RotateSwitchAnimationChain;)Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->this$0:Lcom/miui/player/helper/RotateSwitchAnimationChain;

    #getter for: Lcom/miui/player/helper/RotateSwitchAnimationChain;->mCallback:Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;
    invoke-static {v0}, Lcom/miui/player/helper/RotateSwitchAnimationChain;->access$000(Lcom/miui/player/helper/RotateSwitchAnimationChain;)Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;->onSwitch(Landroid/view/View;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->this$0:Lcom/miui/player/helper/RotateSwitchAnimationChain;

    iget-object v1, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->mRotate:[[F

    iget v3, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->mTimes:I

    add-int/lit8 v3, v3, 0x1

    #calls: Lcom/miui/player/helper/RotateSwitchAnimationChain;->applyRotate(Landroid/view/View;[[FI)V
    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/helper/RotateSwitchAnimationChain;->access$100(Lcom/miui/player/helper/RotateSwitchAnimationChain;Landroid/view/View;[[FI)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->this$0:Lcom/miui/player/helper/RotateSwitchAnimationChain;

    #getter for: Lcom/miui/player/helper/RotateSwitchAnimationChain;->mCallback:Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;
    invoke-static {v0}, Lcom/miui/player/helper/RotateSwitchAnimationChain;->access$000(Lcom/miui/player/helper/RotateSwitchAnimationChain;)Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->this$0:Lcom/miui/player/helper/RotateSwitchAnimationChain;

    #getter for: Lcom/miui/player/helper/RotateSwitchAnimationChain;->mCallback:Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;
    invoke-static {v0}, Lcom/miui/player/helper/RotateSwitchAnimationChain;->access$000(Lcom/miui/player/helper/RotateSwitchAnimationChain;)Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/helper/RotateSwitchAnimationChain$OnSwitchListener;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;->onLastAnimationEnd(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 82
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 87
    return-void
.end method
