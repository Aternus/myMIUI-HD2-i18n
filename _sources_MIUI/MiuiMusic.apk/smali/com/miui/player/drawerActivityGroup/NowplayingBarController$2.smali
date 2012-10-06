.class Lcom/miui/player/drawerActivityGroup/NowplayingBarController$2;
.super Ljava/lang/Object;
.source "NowplayingBarController.java"

# interfaces
.implements Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/drawerActivityGroup/NowplayingBarController;
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
    .line 392
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$2;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstAnimationStart(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$2;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrameBg:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$1100(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    return-void
.end method

.method public onLastAnimationEnd(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$2;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrameBg:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$1100(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    return-void
.end method

.method public onSwitch(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$2;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #calls: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->refreshTogglePause()V
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$400(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    .line 406
    return-void
.end method
