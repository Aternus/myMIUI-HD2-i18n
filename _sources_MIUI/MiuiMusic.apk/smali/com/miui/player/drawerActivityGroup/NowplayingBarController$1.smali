.class Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;
.super Ljava/lang/Object;
.source "NowplayingBarController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->updateState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;


# direct methods
.method constructor <init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    const/4 v2, 0x0

    #setter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mIsAnimationPlaying:Z
    invoke-static {v1, v2}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$302(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;Z)Z

    .line 245
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #calls: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->refreshTogglePause()V
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$400(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    .line 246
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$500(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 247
    .local v0, fadeIn:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 248
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrame:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$600(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 253
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 257
    return-void
.end method
